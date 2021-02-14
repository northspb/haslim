FROM arm64v8/python:3.8-slim

RUN apt-get update && \
    apt-get install -y gcc make tcpdump libpcap0.8-dev curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/*i

RUN  pip install --no-cache-dir homeassistant
