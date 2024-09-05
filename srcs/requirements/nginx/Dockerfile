FROM debian:bullseye-slim

# Update the package list, upgrade installed packages, and install NGINX and OpenSSL
RUN apt update && apt upgrade -y && apt install -y nginx openssl

# Generate a self-signed SSL certificate
RUN mkdir -p /etc/ssl/certs /etc/ssl/private && \
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/localhost.key -out /etc/ssl/certs/localhost.crt \
    -subj "/CN=localhost"

# Copy the NGINX site configuration file
COPY conf/default /etc/nginx/sites-enabled/default

# Expose port 443 for HTTPS traffic
EXPOSE 443

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
