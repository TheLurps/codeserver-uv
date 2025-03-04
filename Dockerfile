ARG UV_VERSION
FROM ghcr.io/astral-sh/uv:${UV_VERSION} as uv-binary

FROM docker.io/kubeflownotebookswg/codeserver

USER root
ENV DEBIAN_FRONTEND=noninteractive
COPY --from=uv-binary /uv /uvx /bin/

USER $NB_UID
ENV PATH="$HOME/.local/bin/:$PATH"
