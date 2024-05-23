FROM debian:bullseye-slim

RUN apt update && apt upgrade -y && apt install -y nginx openssl \
    && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout localhost.key -out localhost.crt \
    -subj "/CN=localhost" \
    && cp localhost.crt ./etc/ssl/certs/localhost.crt \
    && cp localhost.key ./etc/ssl/private/localhost.key

COPY conf/default /etc/nginx/sites-enabled/

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]