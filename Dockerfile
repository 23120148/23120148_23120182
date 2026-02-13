FROM nginx:alpine
RUN adduser -D appuser
COPY . /usr/share/nginx/html
RUN chown -R appuser:appuser /usr/share/nginx/html
RUN mkdir -p /var/cache/nginx /var/log/nginx /var/run/nginx && \
    chown -R appuser:appuser /var/cache/nginx /var/log/nginx /var/run/nginx
USER root
CMD ["sh", "-c", "nginx -g 'daemon off;' && su appuser -c 'nginx -g \"daemon off;\"'"]
