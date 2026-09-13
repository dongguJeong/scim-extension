# Keycloak SCIM Outbound Extension 0.2.0

Keycloak 26.7.3 / Java 21. 관리자 사용자·그룹·그룹 멤버십 이벤트를 SCIM 서버로 전송합니다.

- 사용자 UUID → externalId, 표준 속성 및 RBAC 확장 URN 매핑.
- 그룹 생성/이름 변경/삭제, 직접 멤버 추가/제거, 하위 그룹 삭제 반영.
- Keycloak MariaDB 트랜잭션에 영구 outbox 저장, 최신 상태 조회 후 비동기 전송.
- 성공 시 큐 삭제, 실패 시 최대 5분 간격으로 계속 재시도. 선두 실패 시 후속 작업 대기.
- 실제 기존 Docker Keycloak 8080에 배포. master 리스너: scim-admin-listener.

빌드:

```bash
docker run --rm -v "$PWD:/workspace" -v scim-extension-maven-cache:/root/.m2 -w /workspace maven:3.9.11-eclipse-temurin-21 mvn -B clean verify
```

빌드 결과: target/scim-outbound-extension-0.2.0.jar.
실제 마운트는 clean 빌드 영향을 받지 않도록 deployment/scim-outbound-extension-0.2.0.jar를 사용합니다.
JAR 갱신 후 Keycloak 컨테이너 재생성이 필요합니다.

검증:

```bash
KEYCLOAK_URL=http://127.0.0.1:8080 python3 integration/e2e.py
python3 integration/deployed-groups-e2e.py
python3 integration/groups-outbox-e2e.py
```

마지막 스크립트는 별도 MariaDB 테스트 DB/Keycloak 컨테이너와 장애 프록시로 큐 복구를 검증합니다.
작업 내역, 배포·테스트 로그, 백업 및 운영 제한은 context/WORK_LOG.md에 정리했습니다.
# scim-extension
