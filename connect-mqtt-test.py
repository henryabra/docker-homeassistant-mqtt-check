import paho.mqtt.client as mqtt
import os
import sys

client = mqtt.Client()
print("Trying to connect to mosquitto @ " + os.environ['MOSQUITTO_TEST_HOST'])

try:
    client.connect(os.environ['MOSQUITTO_TEST_HOST'])
    client.disconnect()
    print("Success")
    sys.exit(0)

except Exception:
    print("Failure")
    sys.exit(-1)
