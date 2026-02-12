FROM debian:11
RUN apt update && \
    apt install -y nginx curl openssl && \
    rm -rf /var/lib/apt/lists/*
COPY . /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
