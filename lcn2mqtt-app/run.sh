#!/bin/sh
set -eu

export LCN2MQTT__MQTT__HOST="${MQTT_HOST:-${mqtt_host:-core-mosquitto}}"
export LCN2MQTT__MQTT__PORT="${MQTT_PORT:-${mqtt_port:-1883}}"
export LCN2MQTT__MQTT__USERNAME="${MQTT_USER:-${mqtt_user:-}}"
export LCN2MQTT__MQTT__PASSWORD="${MQTT_PASSWORD:-${mqtt_password:-}}"
export LCN2MQTT__MQTT__BASE_TOPIC="${MQTT_BASE_TOPIC:-${mqtt_base_topic:-lcn2mqtt}}"
export LCN2MQTT__LCN__HOST="${LCN_HOST:-${lcn_host:-}}"
export LCN2MQTT__LCN__PORT="${LCN_PORT:-${lcn_port:-4114}}"
export LCN2MQTT__LCN__USERNAME="${LCN_USERNAME:-${lcn_username:-}}"
export LCN2MQTT__LCN__PASSWORD="${LCN_PASSWORD:-${lcn_password:-}}"
export LCN2MQTT__LOG_LEVEL="${LOG_LEVEL:-${log_level:-INFO}}"

exec python -m lcn2mqtt
