FROM traefik:v2.2

# RUN apk update \
#     && apk add apache2-utils

# # Copy the docker entrypoint file
# COPY ./docker-entrypoint/traefik.sh /usr/local/bin/docker-entrypoint2.sh
# RUN chmod +x /usr/local/bin/docker-entrypoint2.sh
# ENTRYPOINT ["docker-entrypoint2.sh"]