FROM nginx:stable

COPY proxy_params /etc/nginx/proxy_params
COPY local-dev.nginx.conf /etc/nginx/conf.d/local-dev.conf

RUN mkdir -p /var/www/healthcheck
RUN echo '{"status": "ok"}' > /var/www/healthcheck/index.html

CMD /usr/sbin/nginx -c /etc/nginx/nginx.conf -g 'daemon off;'
