#!/bin/bash
# Usa wttr.in para clima simples
case $1 in
  city) curl -s wttr.in?format=%l ;;
  temp) curl -s wttr.in?format=%t | tr -d '+' ;;
  desc) curl -s wttr.in?format=%C ;;
esac
