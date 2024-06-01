FROM nginx
COPY maintenance.html /usr/share/nginx/html/index.html
RUN mkdir /usr/share/nginx/html/status
COPY status.html /usr/share/nginx/html/status/index.html
COPY default.conf /etc/nginx/conf.d
