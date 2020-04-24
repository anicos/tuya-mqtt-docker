#!/bin/sh
sed -i 's|{{mqtt_host}}|'"${MQTT_HOST}"'|g' config.json
sed -i 's|{{mqtt_port}}|'"${MQTT_PORT}"'|g' config.json
sed -i 's|{{mqtt_topic}}|'"${MQTT_TOPIC}"'|g' config.json
sed -i 's|{{mqtt_user}}|'"${MQTT_USER}"'|g' config.json
sed -i 's|{{mqtt_pass}}|'"${MQTT_PASS}"'|g' config.json
sed -i 's|{{mqtt_qos}}|'"${MQTT_QOS}"'|g' config.json

echo "Run with following config"
cat config.json

node tuya-mqtt.js
