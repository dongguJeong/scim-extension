# 현재 상태: 0.2.0 기존 Docker 배포 완료

2026-09-14: 그룹 동기화와 JPA 영구 outbox 추가 후 기존 Keycloak 26.7.3에 배포했습니다.
현재 절차·결과·설정·제한은 `context/WORK_LOG.md`와 `README.md`를 기준으로 합니다.
아래 내용은 0.1.0 시점의 이전 테스트 기록으로, 영구 큐/그룹 미구현 및 미배포 설명은 현재에 적용되지 않습니다.

---

# Keycloak SCIM Outbound Extension — 빌드 및 통합 테스트

갱신: 2026-09-13

## 환경

현재 확인한 Compose:

- `/Users/jdg/Desktop/scim/keycloak-docker/compose.yaml`: Keycloak 26.7.3, MariaDB
- `/Users/jdg/Desktop/scim/scim-api/compose.yaml`: Node.js SCIM API, MariaDB
- SCIM API: `http://127.0.0.1:3000/scim/v2`
- 기존 Keycloak: `http://127.0.0.1:8080`

기존 Keycloak Compose는 `../keycloak-scim-outbound/target/keycloak-scim-outbound-1.2.0.jar`를 마운트합니다.
이는 이 프로젝트의 JAR과 다른 확장입니다. 이 프로젝트의 테스트는 별도 임시 Keycloak을 사용합니다.

## 빌드와 실행

Docker Desktop과 Python 3이 필요합니다. Maven/JDK를 호스트에 설치할 필요는 없습니다.

SCIM 환경이 정지되어 있을 때:

```bash
cd /Users/jdg/Desktop/scim/scim-api
docker compose up -d --build
curl --fail http://127.0.0.1:3000/health
```

빌드 + 실제 연동 테스트:

```bash
cd /Users/jdg/Desktop/scim-extension
./integration/run-e2e.sh
SKIP_BUILD=true DELETE_AS_DEACTIVATE=true ./integration/run-e2e.sh
```

첫 명령은 Maven 3.9.11 / JDK 21 컨테이너에서 `clean verify`를 실행합니다.
임시 Keycloak 26.7.3이 `target/scim-outbound-extension-0.1.0.jar`를 마운트하고 포트 18080에서 시작됩니다.
SCIM 서버에는 기존 데이터를 구분할 수 있는 고유 이름의 테스트 사용자만 생성합니다.
Python 테스트는 다음을 자동 검증하고 테스트 데이터와 임시 Realm을 삭제합니다.

1. 리스너를 등록한 새 Realm 생성. 관리자 representation 저장을 끈 상태로 테스트.
2. 사용자 생성 → UUID/externalId, 이름, 이메일, 전화번호, RBAC 속성 확인.
3. 부분 수정 → 전체 상태 보존, enabled=false → active=false 확인.
4. 빠른 재활성화와 삭제 → 이벤트 누락 없이 실제 DELETE 확인.
5. `DELETE_AS_DEACTIVATE=true` 실행에서는 DELETE 대신 active=false PATCH 확인.

실패는 종료 코드로 전파됩니다. 컨테이너는 EXIT trap으로 제거합니다.
로그: `target/e2e-keycloak-false.log`, `target/e2e-keycloak-true.log`.
호스트/포트 조정: `SCIM_URL`, `SCIM_CONTAINER_URL`, `PORT`, `KEYCLOAK_IMAGE` 환경변수.

## 매핑

| SCIM         | Keycloak                                                                 |
| ------------ | ------------------------------------------------------------------------ |
| externalId   | UUID (`id`)                                                              |
| userName     | username                                                                 |
| displayName  | attributes.displayName → firstName + lastName → username                 |
| active       | enabled                                                                  |
| emails       | email                                                                    |
| phoneNumbers | attributes.phoneNumber                                                   |
| password     | attributes.password (명시적 커스텀 속성; credential에서 추출하지 않음)   |
| RBAC 확장    | attributes의 otpid, telegram_id, company, ip, notExpire, expireDate, mac |

RBAC URN: `urn:ietf:params:scim:schemas:extension:rbac:2.0:User`.
Keycloak의 리스트 속성을 scalar로 변환하며 ip는 `[{value:...}]`, notExpire는 boolean입니다.
User Profile에서 사용할 커스텀 속성을 허용해야 합니다. 테스트 Realm은 unmanaged attributes를 활성화합니다.
SCIM 서버가 반환하는 meta/groups 등 DTO 외 필드는 허용합니다.

## 동작 및 제한

- 관리자 USER CREATE/UPDATE/DELETE만 지원합니다. 그룹·멤버십·사용자 셀프서비스 이벤트는 미구현입니다.
- representation JSON 대신 트랜잭션 내 UserModel에서 전체 스냅샷을 캡처합니다.
- 커밋 성공 후 동기 HTTP 전송합니다. 연결 제한 10초, 요청 제한 15초입니다.
- 시간 기반 디바운스를 사용하지 않습니다. UUID 검색 기반 upsert로 반복 이벤트를 처리합니다.
- 409 발생 후 UUID 재검색으로 연결되지 않으면 실패로 처리합니다. 여러 검색 결과도 임의 선택하지 않습니다.
- 429/5xx/네트워크 오류는 최대 3회 시도합니다. 재시도는 200ms, 400ms 간격입니다.
- 영구 outbox/재처리 큐는 없습니다. 재시도 소진·프로세스 중단 시 수동 재동기화가 필요합니다.
- 다중 노드에서 동일 사용자의 동시 변경 순서를 보장하지 않습니다.
  `- SCIM 서버는 externalId 검색과 사용자 고유성 처리를 지원해야 합니다.
- 현재 로컬 SCIM DB 코드는 telegram_id를 별도 컬럼으로 보존하지 않으므로 해당 필드의 서버 저장은 별도 범위입니다.

## 실제 기존 Keycloak에 적용할 경우

현재 다른 확장을 마운트하는 Compose의 provider 경로와 리스너 설정을 변경해야 합니다.
이 테스트 스크립트는 기존 Compose나 기존 확장을 변경하지 않습니다.
JAR 교체는 자동 reload가 아닙니다. Keycloak 빌드/재시작이 필요합니다.
