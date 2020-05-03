FROM openjdk:8-slim
VOLUME /tmp
EXPOSE 8888
COPY ./target/springboot-servicio-config-server-0.0.1-SNAPSHOT.jar config-server.jar
COPY ./wait-for-it.sh wait-for-it.sh
RUN chmod +x wait-for-it.sh
COPY ./entrypoint.sh entrypoint.sh
RUN chmod +x entrypoint.sh
RUN sed -i -e 's/\r$//' *.sh
ENTRYPOINT ./entrypoint.sh
