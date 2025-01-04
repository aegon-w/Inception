# Inception

> **School Project** | **1337 / 42 Network**

Inception is a system administration and virtualization project. The objective is to set up a small infrastructure using Docker Compose, ensuring containerized services interact seamlessly with one another.

## Mandatory Part

The goal is to create a multi-service application architecture leveraging **Docker Compose**. The project focuses on deploying the following services in separate containers:

1. **NGINX**: A reverse proxy for managing HTTP traffic.
2. **WordPress**: A content management system (CMS) for creating and managing websites.
3. **MariaDB**: A database service to store WordPress data.

### Project Specifications

- All services must run in **Docker containers** orchestrated with **Docker Compose**.
- Each service must have its **own dedicated container**:
  - **NGINX** container for HTTP(S) handling.
  - **WordPress** container for CMS functionality.
  - **MariaDB** container for the database.
- The system must include:
  - **Volumes** to persist data (e.g., WordPress content and MariaDB database files).
  - **Custom networks** to allow services to communicate securely.
- SSL must be configured for **secure HTTPS access**.

### Mandatory Features

1. **NGINX**:
   - Configure as a reverse proxy.
   - Set up SSL/TLS certificates for HTTPS.
2. **WordPress**:
   - Deploy WordPress with a working admin panel.
   - Connect to the MariaDB database for data storage.
3. **MariaDB**:
   - Initialize a database for WordPress.
   - Set up a secure root password.

### File Structure

Here’s an example of how the project directory might look:

