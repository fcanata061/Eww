#!/bin/bash
# Uso: weather.sh city|temp|feels|desc

CITY="São Paulo"

case "$1" in
  city)  echo "$CITY" ;;
  temp)  curl -s "wttr.in/$CITY?format=%t" | sed 's/+//;s/°C//' ;;
  feels) curl -s "wttr.in/$CITY?format=%f" | sed 's/+//;s/°C//' ;;
  desc)  curl -s "wttr.in/$CITY?format=%C" ;;
  *)     echo "??" ;;
esac
