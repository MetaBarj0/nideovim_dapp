ARG BASE_IMAGE=nideovim_ide_image

# hadolint ignore=DL3006
FROM ${BASE_IMAGE} AS install_next
ARG CREATE_NEXT_APP_MAJOR_VERSION=15
ARG USER_NAME=root
USER ${USER_NAME}
RUN npm install -g create-next-app@^${CREATE_NEXT_APP_MAJOR_VERSION}

# The last build stage must named 'end'
FROM install_next AS end
ARG USER_NAME=root
ARG USER_HOME_DIR=/root
USER ${USER_NAME}
WORKDIR ${USER_HOME_DIR}
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN curl -L https://foundry.paradigm.xyz | bash
RUN FOUNDRY_DIR=${USER_HOME_DIR}/.foundry ${USER_HOME_DIR}/.foundry/bin/foundryup
ENV FOUNDRY_DIR=${USER_HOME_DIR}/.foundry
ENV PATH=${PATH}:${FOUNDRY_DIR}/bin
