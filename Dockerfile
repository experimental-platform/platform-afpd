FROM experimentalplatform/ubuntu:latest

RUN apt-get update && \
    apt-get install -y -q \
    netatalk \
    libnss-extrausers \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY netatalk.conf /etc/netatalk.conf
COPY afpd.conf /etc/afpd.conf
COPY nsswitch.conf /etc/nsswitch.conf

COPY extmap.conf /usr/local/etc/extmap.conf

COPY AppleVolumes.default /etc/netatalk/AppleVolumes.default

CMD ["afpd", "-d", "-F", "/etc/afpd.conf"]
