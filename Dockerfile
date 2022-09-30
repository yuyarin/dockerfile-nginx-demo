FROM nginxinc/nginx-unprivileged
USER root
RUN chown -R nginx /usr/share/nginx
COPY ./change-hostname.sh /docker-entrypoint.d/change-hostname.sh
