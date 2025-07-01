import sys
import requests
from dotenv import load_dotenv
import os

load_dotenv()
TELEGRAM_TOKEN = os.getenv('TELEGRAM_TOKEN')
CHAT_ID = os.getenv('CHAT_ID')

def send_alert(message):
 if TELEGRAM_TOKEN and CHAT_ID:
 url = f"https://api.telegram.org/bot{TELEGRAM_TOKEN}/sendMessage"
 payload = {'chat_id': CHAT_ID, 'text': f"⚠️ Alerta Cerberus: {message}"}
 requests.post(url, data=payload)

if __name__ == '__main__':
 message = sys.argv[1] if len(sys.argv) > 1 else "Test Alert"
 send_alert(message)
