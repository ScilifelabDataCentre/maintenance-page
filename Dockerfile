FROM nginx
COPY maintenance.html /usr/share/nginx/html/index.html
RUN mkdir /usr/share/nginx/html/status
COPY status.html /usr/share/nginx/html/status/index.html
COPY default.conf /etc/nginx/conf.d
RUN chown -R nginx:nginx /var/log/nginx
RUN mkdir -p /var/cache/nginx
RUN chown -R nginx:nginx /var/cache/nginx
# COPY docker-entrypoint.sh /
RUN chmod 1777 /var/run

USER nginx
