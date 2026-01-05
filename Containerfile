FROM docker.io/nginx:1.27-alpine

COPY ytmd.html /usr/share/nginx/html/index.html
COPY ytmd-config.js /usr/share/nginx/html/ytmd-config.js
COPY 10-ytmd-config.sh /docker-entrypoint.d/10-ytmd-config.sh

RUN chmod +x /docker-entrypoint.d/10-ytmd-config.sh

EXPOSE 80
