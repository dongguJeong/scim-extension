# SCIM 확장 작업 내역

## 구현 완료 — 0.2.0

- Keycloak 26.7.3 실제 EventListener SPI 연결 및 자체 org.keycloak 스텁 제거.
- Keycloak UUID → SCIM externalId, SCIM base URL 경로 보존.
- 사용자 전체 상태 PUT, enabled → active, 커스텀 속성을 RBAC 확장 URN으로 직렬화.
- 그룹 생성/이름 변경/삭제, 직접 멤버 추가·제거, 하위 그룹 삭제 동기화.
- 중첩 그룹은 SCIM Group의 경로 이름으로 표현. 멤버 ID는 SCIM 사용자 ID로 변환.
- JPA/Liquibase 기반 SCIM_OUTBOX, SCIM_WORKER_LOCK, SCIM_GROUP_LINK 추가.
- 사용자/그룹 변경과 같은 Keycloak DB 트랜잭션에 outbox 저장. 저장 실패 시 원본 트랜잭션 rollback-only.
- 큐에는 식별자만 저장하고 처리 시 최신 상태 조회. 개인정보/비밀번호 스냅샷 저장 없음.
- DB 잠금으로 워커 직렬화. 성공한 작업만 삭제하며 실패는 최대 5분 간격으로 무기한 재시도.
- HTTP 전송 후 DB 커밋 전 중단될 수 있으므로 at-least-once 처리. UUID 검색/upsert로 중복 생성 방지.

## 검증 완료

- 빌드 성공, 단위 테스트 13개 성공: build-0.2.0.log.
- 별도 Keycloak 26.7.3 + 실제 MariaDB 테스트 DB + 기존 SCIM API 사용.
- 사용자 생성/수정/삭제, 속성 매핑 성공.
- 그룹/하위 그룹 생성, 멤버 ID 변환, 이름 변경, 멤버 제거/재추가, 부모 삭제 성공.
- 프록시 503 장애 중 큐 영구 저장 확인.
- Keycloak 컨테이너 삭제/재생성 후 동일 MariaDB에서 미처리 큐 복구 및 중복 없는 동기화 확인.
- 거절된 관리자 변경이 큐를 남기지 않는 것 확인.
- 상세: groups-outbox-e2e.log, e2e-before-recreate.log, e2e-final.log.

## 기존 Docker 배포 완료 — 2026-09-14 KST

- 실제 기존 `keycloak` 컨테이너(호스트 8080), Keycloak 26.7.3에 0.2.0 배포.
- 기존 MariaDB `keycloak` DB에 Liquibase outbox 테이블 설치.
- 배포 JAR: `/Users/jdg/Desktop/scim-extension/deployment/scim-outbound-extension-0.2.0.jar`.
- Compose: `/Users/jdg/Desktop/scim/keycloak-docker/compose.yaml`.
- SCIM 대상: `http://host.docker.internal:3000/scim/v2`, 물리 DELETE 모드.
- master 리스너를 `scim-admin-listener`로 전환, `jboss-logging` 유지.
- 이전 확장 마운트의 호스트 경로는 실제 JAR이 아닌 빈 디렉터리였음. 해당 마운트 제거.
- 이전 `keycloak-scim-outbound` component는 provider 부재로 PUT이 500 실패. 연결된 federated 사용자 0명 확인 후 백업하고 해당 component 삭제.
- 기존 사용자/그룹 데이터는 유지. 테스트 과정에서 master의 기존 그룹·멤버도 최신 Keycloak 상태로 SCIM에 반영됨.
- 실제 8080에서 사용자 생성/전체 상태 수정/삭제 통과: `deployed-user-e2e.log`.
- 실제 8080에서 그룹 생성/멤버 연결/이름 변경/멤버 제거/하위 그룹 일괄 삭제 통과: `deployed-groups-e2e.log`.
- 최종 재시작 후 기존 master Realm 테스트: `deployed-master-e2e.log`.
- 테스트 사용자/그룹/임시 Realm 정리. outbox 잔여 건수 최종 확인.

### 백업 및 산출물

- `backups/keycloak-before-deployment.sql`: 스키마 설치 직전 Keycloak DB dump (접근 권한 600).
- `backups/compose.pre-deployment.yaml`: 적용 직전 Compose.
- `backups/activation.before.json`: 전환 직전 Realm/component 설정 (접근 권한 600).
- `backups/source-before-groups-outbox.tar.gz`: 그룹/outbox 구현 이전 소스.
- `deployment-final.log`, `deployment-verification.txt`: 최종 컨테이너 로그/큐/JAR 검증.

### 재검증

```bash
KEYCLOAK_URL=http://127.0.0.1:8080 python3 integration/e2e.py
python3 integration/deployed-groups-e2e.py
TEST_REALM=master python3 integration/deployed-groups-e2e.py
```

마지막 명령은 master에서 고유 이름의 테스트 사용자·그룹을 만들고 정리하며, 해당 Realm의 기존 그룹도 재동기화합니다.
DB dump 복원은 이후 변경을 되돌릴 수 있으므로 장애 시에만 범위를 확인해 수행합니다. 이전 Compose는 이미 잘못된 JAR 경로를 포함하므로 그대로 복원해도 이전 SCIM 확장이 정상 동작한다는 보장은 없습니다.

## 운영 특성

- FIFO 선두 실패는 이후 작업을 대기시킴. 영구적인 4xx도 삭제하지 않으므로 원인 해결 후 재처리 필요.
- 그룹 이벤트 및 사용자 처리 후 Realm 전체 그룹을 재검사하므로 대규모 Realm에서는 처리 비용 고려 필요.
- 그룹은 직접 사용자 멤버를 동기화하며 SCIM 중첩 그룹 자체를 생성하지 않음.
- 관리자 이벤트 범위이며 사용자 셀프서비스 이벤트는 아직 미지원.
- 큐 확인: SELECT ID,REALM_ID,KIND,ATTEMPTS,NEXT_ATTEMPT,LAST_ERROR FROM SCIM_OUTBOX ORDER BY ID;
- 원인 해결 후 즉시 재시도: UPDATE SCIM_OUTBOX SET NEXT_ATTEMPT=0 WHERE ID=<확인한 작업 ID>;
- API 주소를 변경하면 대기 작업도 새로운 주소로 전송되므로 큐 상태를 먼저 확인할 것.
