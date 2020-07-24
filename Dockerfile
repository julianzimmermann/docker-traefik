FROM traefik:v2.3   

RUN apk update \
    && apk add apache2-utils \
    && apk add gettext \
    && mkdir -p /usr/local/bin/scripts \
    && mkdir -p /data \
    && rm -rf /entrypoint.sh \
    && rm -rf /usr/local/bin/entrypoint.sh

COPY ./entrypoint/docker-entrypoint.sh /usr/local/bin/entrypoint.sh
COPY ./entrypoint/docker-entrypoint.sh /entrypoint.sh
COPY ./scripts/traefik.sh /usr/local/bin/scripts/traefik.sh
COPY ./scripts/middleware.sh /usr/local/bin/scripts/middleware.sh
COPY ./scripts/passwd.sh /usr/local/bin/scripts/passwd.sh
COPY ./conf/middleware.template /conf/middleware.template
COPY ./conf/traefik.template /conf/traefik.template

RUN chmod +x /usr/local/bin/scripts/traefik.sh \
    && chmod +x /usr/local/bin/scripts/middleware.sh \
    && chmod +x /usr/local/bin/scripts/passwd.sh \
    && chmod +x /usr/local/bin/entrypoint.sh \
    && chmod +x /entrypoint.sh