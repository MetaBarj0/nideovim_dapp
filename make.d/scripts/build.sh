get_user_home_dir() {
  if [ "${ROOTLESS}" -eq 0 ]; then
    echo /root
  else
    echo "${NON_ROOT_USER_HOME_DIR}"
  fi
}

get_user_name() {
  if [ "${ROOTLESS}" -eq 0 ]; then
    echo root
  else
    echo "${NON_ROOT_USER_NAME}"
  fi
}

main() {
  docker build \
    --build-arg BASE_IMAGE="${COMPOSE_PROJECT_NAME}_ide_image" \
    --build-arg CREATE_NEXT_APP_MAJOR_VERSION="${CREATE_NEXT_APP_MAJOR_VERSION}" \
    --build-arg USER_HOME_DIR="$(get_user_home_dir)" \
    --build-arg USER_NAME="$(get_user_name)" \
    --target="${target_stage?}" \
    -t "${COMPOSE_PROJECT_NAME}"_ide_image \
    -f docker.d/ide/ide.override.Dockerfile \
    docker.d/ide
}

main
