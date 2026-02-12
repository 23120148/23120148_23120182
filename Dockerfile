FROM alpine:3.15
RUN apk update && apk add nginx
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
