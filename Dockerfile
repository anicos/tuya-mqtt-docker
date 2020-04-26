ARG PARENT_DOCKER_IMAGE
FROM ${PARENT_DOCKER_IMAGE}
WORKDIR /tuya-mqtt
ADD https://github.com/anicos/tuya-mqtt/archive/master.zip ./
RUN unzip -j ./master.zip
RUN npm install
ENV MQTT_HOST=""
ENV MQTT_PORT=1883
ENV MQTT_TOPIC="tuya/"
ENV MQTT_USER=""
ENV MQTT_PASS=""
ENV MQTT_QOS=2
COPY config.json ./
COPY run.sh ./
CMD ["./run.sh"]
