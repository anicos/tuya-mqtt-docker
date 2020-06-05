FROM node:lts-alpine3.11
ARG TUYA_MQTT_VERSION=latest
WORKDIR /tuya-mqtt
ADD https://github.com/anicos/tuya-mqtt/archive/v$TUYA_MQTT_VERSION.zip ./
RUN unzip -j ./v$TUYA_MQTT_VERSION
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
