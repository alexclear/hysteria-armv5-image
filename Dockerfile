FROM arm32v5/debian:12-slim AS dist

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
       bash wget tzdata ca-certificates \
  && rm -rf /var/lib/apt/lists/*

COPY /go/bin/hysteria /usr/local/bin/hysteria

ENTRYPOINT ["hysteria"]
