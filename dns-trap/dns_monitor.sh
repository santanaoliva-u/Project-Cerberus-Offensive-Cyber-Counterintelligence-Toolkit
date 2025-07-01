#!/bin/bash
# Monitorizar consultas DNS a dominios trampa
# Requiere permisos de root y tcpdump instalado

DOMINIO_TRAMPA="jesus-uriel-fake-domain.com"
LOG_FILE="../tracker-server/logs/dns.log"

echo "Iniciando monitorización DNS para $DOMINIO_TRAMPA..."
tcpdump -i any "udp port 53" 2>/dev/null | grep --line-buffered "$DOMINIO_TRAMPA" >>"$LOG_FILE" &
echo "Monitorización activa. Logs en $LOG_FILE"
