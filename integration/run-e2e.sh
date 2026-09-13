#!/usr/bin/env bash
set -euo pipefail
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCIM_URL="${SCIM_URL:-http://127.0.0.1:3000/scim/v2}"
SCIM_CONTAINER_URL="${SCIM_CONTAINER_URL:-http://host.docker.internal:3000/scim/v2}"
KEYCLOAK_IMAGE="${KEYCLOAK_IMAGE:-quay.io/keycloak/keycloak:26.7.3}"
PORT="${PORT:-18080}"
NAME="scim-extension-e2e-$$"
mkdir -p "$ROOT_DIR/target"
if [[ "${SKIP_BUILD:-false}" != true ]]; then
  docker run --rm -v "$ROOT_DIR:/workspace" -v scim-extension-maven-cache:/root/.m2 -w /workspace maven:3.9.11-eclipse-temurin-21 mvn -B clean verify
fi
curl --fail --silent --show-error "$SCIM_URL/ServiceProviderConfig" > /dev/null
cleanup() { docker logs "$NAME" > "$ROOT_DIR/target/e2e-keycloak-${DELETE_AS_DEACTIVATE:-false}.log" 2>&1 || true; docker rm -f "$NAME" > /dev/null 2>&1 || true; }
trap cleanup EXIT
# Dedicated disposable Keycloak instance: existing Keycloak and its provider remain untouched.
docker run -d --name "$NAME" -p "127.0.0.1:$PORT:8080" \
  -e KC_BOOTSTRAP_ADMIN_USERNAME=root -e KC_BOOTSTRAP_ADMIN_PASSWORD=root \
  -e "JAVA_OPTS_APPEND=-Dscim.baseUrl=$SCIM_CONTAINER_URL -Dscim.deleteAsDeactivate=${DELETE_AS_DEACTIVATE:-false}" \
  -v "$ROOT_DIR/target/scim-outbound-extension-0.2.0.jar:/opt/keycloak/providers/scim-outbound-extension.jar:ro" \
  "$KEYCLOAK_IMAGE" start-dev > /dev/null
SCIM_URL="$SCIM_URL" KEYCLOAK_URL="http://127.0.0.1:$PORT" python3 "$ROOT_DIR/integration/e2e.py"
