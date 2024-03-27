FROM openjdk:8-alpine

WORKDIR /opt/openinstall

COPY . /openinstall /opt/openinstall

EXPOSE 8099

VOLUME /opt

CMD ["./openinstall.sh", "restart"]

ENTRYPOINT ["/opt/openinstall/bin/openinstall.sh", "restart"]

