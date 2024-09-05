FROM debian:bullseye-slim

COPY tools/db.sh .

RUN  apt update -y && apt upgrade -y && apt install -y mariadb-server \
&& chmod +x db.sh


COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

# ENTRYPOINT [ "bash" ]
CMD ["bash", "db.sh"]