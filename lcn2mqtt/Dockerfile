FROM python:3.13-slim

WORKDIR /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*

COPY run.sh /app/run.sh

RUN pip install --no-cache-dir git+https://github.com/artur90226/lcn2mqtt.git@main \
    && chmod +x /app/run.sh

CMD ["/app/run.sh"]
