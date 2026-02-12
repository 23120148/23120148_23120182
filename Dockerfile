FROM alpine:3.18
RUN apk update && apk add openssl curl nginx
COPY . /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
