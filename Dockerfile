FROM nginx:alpine
# tạo user
RUN adduser -D appuser
COPY . /usr/share/nginx/html
# đổi quyền
RUN chown -R appuser:appuser /usr/share/nginx/html
# chuyển sang user không phải root
USER appuser
CMD ["nginx", "-g", "daemon off;"]
