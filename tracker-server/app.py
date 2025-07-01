from flask import Flask, request
import logging
import os

app = Flask(__name__)

# Configurar logging
logging.basicConfig(filename='logs/access.log', level=logging.INFO,
 format='%(asctime)s - %(message)s')

@app.route('/track', methods=['POST'])
def track():
 data = request.json
 ip = request.remote_addr
 ua = data.get('ua', 'Unknown')
 referer = data.get('referer', 'Direct')
 log_entry = f"IP: {ip} | UA: {ua} | Referer: {referer}"
 logging.info(log_entry)
 
 # Enviar alerta (si está configurado)
 if os.path.exists('../alerts/alert.py'):
 os.system('python3 ../alerts/alert.py "{}"'.format(log_entry))
 
 return '', 204

if __name__ == '__main__':
 if not os.path.exists('logs'):
 os.makedirs('logs')
 app.run(host='0.0.0.0', port=5000)
