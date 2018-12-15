FROM homeassistant/raspberrypi2-homeassistant

WORKDIR /usr/src/app

COPY connect-mqtt-test.py connect-mqtt-test.py
COPY wait-for-mosquitto.sh wait-for-mosquitto.sh

RUN chmod +x wait-for-mosquitto.sh

ENV MQTT_TEST_HOST=localhost

CMD ["sh", "/usr/src/app/wait-for-mosquitto.sh", "python", "-m", "homeassistant", "--config", "/config"]