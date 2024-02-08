FROM mongo:latest

RUN apt-get update && apt-get -q install -y

COPY --chown=mongodb:mongodb mongod-start.sh /usr/local/bin/
COPY --chown=mongodb:mongodb mongod-init.sh /usr/local/bin/
COPY --chown=mongodb:mongodb mongod.conf /etc/mongod.conf

RUN chmod u+x /usr/local/bin/mongod-start.sh /usr/local/bin/mongod-init.sh

ENTRYPOINT ["mongod-start.sh"]

CMD mongod -f /etc/mongod.conf
