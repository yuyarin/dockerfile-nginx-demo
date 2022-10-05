FROM nginxinc/nginx-unprivileged
USER root
RUN chown -R 101 /usr/share/nginx
COPY ./change-hostname.sh /docker-entrypoint.d/change-hostname.sh
USER 101
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
