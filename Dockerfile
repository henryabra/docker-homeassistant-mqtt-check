FROM homeassistant/raspberrypi2-homeassistant

COPY connect-mqtt-test.py connect-mqtt-test.py
COPY wait-for-mosquitto.sh wait-for-mosquitto.sh

RUN chmod +x wait-for-mosquitto.sh

ENV MOSQUITTO_TEST_HOST=mqtt

CMD ["./wait-for-mosquitto.sh", "python", "app.py"]