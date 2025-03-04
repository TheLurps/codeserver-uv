FROM docker.io/kubeflownotebookswg/codeserver
ARG UV_VERSION

USER root
ENV DEBIAN_FRONTEND=noninteractive

COPY --from=ghcr.io/astral-sh/uv:${UV_VERSION} /uv /uvx /bin/

USER $NB_UID
ENV PATH="$HOME/.local/bin/:$PATH"
