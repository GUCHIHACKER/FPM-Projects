#!/bin/bash

# Preguntar por fecha de cumpleaños
echo -n "Ingresa tu fecha de cumpleaños (MM/DD): "
read cumple

# Calcular el número de días hasta el cumpleaños
hoy=$(date +%m/%d)
if [ "$cumple" == "$hoy" ]; then
  echo "¡Feliz cumpleaños!"
else
  cumple_timestamp=$(date -d "$cumple" +%s)
  hoy_timestamp=$(date +%s)
  dias=$(( (cumple_timestamp - hoy_timestamp) / 86400 ))
  if [ "$dias" -lt 0 ]; then
    dias=$(( 365 + dias ))
  fi
  echo "Faltan $dias días para tu cumpleaños."
fi
