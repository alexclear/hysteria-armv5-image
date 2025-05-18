FROM arm32v5/debian:12-slim AS dist

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
       bash wget tzdata ca-certificates \
  && rm -rf /var/lib/apt/lists/* \
  && wget -O /usr/local/bin/hysteria \
      https://github.com/apernet/hysteria/releases/download/app%2Fv2.6.1/hysteria-linux-armv5 \
  && chmod +x /usr/local/bin/hysteria

ENTRYPOINT ["hysteria"]
