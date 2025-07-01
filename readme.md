
# 🐍 Proyecto Cerberus — Vigilancia Silenciosa. Contrainteligencia Activa.

version -  0.1

> *“Vinieron a mirar.  
> Ahora sabemos quiénes son.”*

---
Cerberus no es una herramienta.  
Es un **sistema de trampas digitales**, una **red de escucha silenciosa**, un **archivo vivo de intenciones ajenas**.

No responde.  
No pregunta.  
**Observa.**  
**Registra.**  
**Perfila.**

> Todo aquel que intente investigarte — se convierte en el investigado.

---
# Sirve pera:
Detectar y perfilar cualquier entidad que intente recolectar información sobre:

- Tu nombre real o alias (Google, GitHub, foros, pastebins).  
- Repositorios falsos o scripts aparentemente públicos.  
- Documentos, imágenes o CVEs que tú *dejas caer*.  
- Cualquier infraestructura digital que *simules*.

Cerberus no alerta. **Activa sensores. Dispara beacons. Recoge huellas.**

---

## tree

```

cerberus/
├── honeypages/        <- Sitios trampa con JS oculto
├── tracker-server/    <- Núcleo de registro y análisis (Flask)
├── dns-trap/          <- Monitoreo DNS con tcpdump
├── github-traps/      <- Repos señuelo con pixel invisibles
├── pdf-traps/         <- PDFs armados con rastreo embebido
├── alerts/            <- Alertas en tiempo real vía Telegram/email
├── deploy.sh          <- Despliegue completo en segundos
└── .env.example       <- Variables sensibles

````

---

## 🕶️ Módulos en Operación

### 🕸️ `honeypages/`
- Páginas web realistas con JS silencioso.
- Pensadas para indexación forzada en buscadores.
- Capturan IP, UA, referer y timestamp sin levantar sospechas.

### 🛰️ `dns-trap/`
- Escucha silenciosa a nivel de red.
- Registra consultas DNS dirigidas a dominios que solo un analista curioso resolvería.

### 📄 `pdf-traps/`
- PDFs armados que contienen llamadas ocultas.
- Al ser abiertos, activan balizas sin necesidad de interacción directa.

### 🧠 `tracker-server/`
- API central que recibe, categoriza y registra cada evento.
- Se integra con Telegram o cualquier canal silencioso de alerta.

### 🐾 `github-traps/`
- READMEs que simulan herramientas o leaks.
- Usan tracking pixels para identificar clones, bots y visitantes.

---

## deploy

```bash
git clone https://github.com/tuusuario/cerberus.git
cd cerberus
cp .env.example .env      # ← Configura tu dominio y token
bash deploy.sh            # ← Lanza todo: tracker, DNS y alertas
````

1. Publica tus honeypages en un hosting con SEO activado.
2. Sube los README trampa en GitHub.
3. Inserta los PDFs donde *alguien* no pueda resistirse.
4. Observa. Analiza. Decide.

---

##  Rastreo Invisible

* Cada clon, cada apertura, cada búsqueda deja una marca.
* Cerberus la registra.
* Cerberus la cruza.
* Cerberus **la recuerda**.

---

##  Ejemplo de Registro

```
[2025-07-01 03:17:55] 📡 Activación desde PDF armado  
IP: 89.147.101.22  
UA: Mozilla/5.0 (Windows NT 10.0)  
Referer: ---  
Trigger: Apertura de trap.pdf
```

---

## Operación

| Escenario                | Acción de Cerberus                  |
| ------------------------ | ----------------------------------- |
| Alguien busca tu alias   | Honeypage trampa indexada → Beacon  |
| Bot clona tu repositorio | README con pixel invisible → Alerta |
| Abren un PDF señuelo     | URL embebida activa webhook         |
| Consulta DNS sospechosa  | `dns-trap/` registra IP y dominio   |

---

## Perfilado Silencioso

Cerberus no necesita preguntar nada.
Todo está en los patrones:

* Agente de usuario
* Hora exacta
* Tipo de trampa activada
* Geolocalización pasiva
* Repeticiones → **obsesión**

---

## Recomendaciones de Acción

* Bloqueo selectivo con `iptables`
* Enriquecimiento OSINT (WHOIS, Shodan, etc.)
* Reportes a abuse de hosting o ISP
* Respuesta activa (opcional) con scripts autónomos

---

## Licencia

MIT — Uso ético y controlado recomendado.
Cerberus es una herramienta de **vigilancia táctica**.
No defiende: **previene, perfila y expone**.

---

> *“No existe el reconocimiento anónimo.
> Solo los que aún no han sido identificados.”*

