#!/bin/sh
# wait-for-mosquitto.sh

set -e

cmd="$@"

until python connect-mqtt-test.py; do
  >&2 echo "MQTT is unavailable - sleeping"
  sleep 1
done

>&2 echo "MQTT is up - executing command [$cmd]"
exec $cmd
