#!/bin/bash
# Script de despliegue del entorno Cerberus

echo "Configurando entorno..."
python3 -m venv venv
source venv/bin/activate
pip install flask python-dotenv requests

echo "Creando directorios y logs..."
mkdir -p tracker-server/logs

echo "Iniciando tracker-server..."
python3 tracker-server/app.py &

echo "Iniciando DNS trap..."
bash dns-trap/dns_monitor.sh &

echo "Entorno desplegado. Revisa logs en tracker-server/logs/"
