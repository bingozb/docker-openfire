FROM anapsix/alpine-java:8_server-jre_unlimited

ENV OPENFIRE_VERSION=4_3_2 \
    OPENFIRE_DATA_DIR=/var/lib/openfire

RUN wget http://www.igniterealtime.org/downloadServlet?filename=openfire/openfire_${OPENFIRE_VERSION}.tar.gz -O /openfire_${OPENFIRE_VERSION}.tar.gz \
&& tar -xzf /openfire_${OPENFIRE_VERSION}.tar.gz \
&& mv openfire /opt/openfire \
&& rm -r openfire_${OPENFIRE_VERSION}.tar.gz \
&& chmod +x /opt/openfire/bin/openfire.sh

EXPOSE 3478/tcp 3479/tcp 5222/tcp 5223/tcp 5229/tcp 7070/tcp 7443/tcp 7777/tcp 9090/tcp 9091/tcp

VOLUME ["${OPENFIRE_DATA_DIR}"]

ENTRYPOINT ["opt/openfire/bin/openfire.sh"]