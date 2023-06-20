FROM lsiobase/ubuntu:jammy

ARG DEBIAN_FRONTEND=noninteractive

ENV \
	HOME=/config \
	TZ=UTC

RUN \
	echo "**** install packages ****" && \
	apt-get update && \
	apt-get install -y \
		nut-cgi && \
    a2enmod cgi && \
    echo "I_HAVE_SECURED_MY_CGI_DIRECTORY" >> /etc/nut/upsset.conf && \
    mkdir -p /var/run/apache2 && \
	echo "**** clean up ****" && \
	apt-get clean && \
	apt-get autoremove && \
	rm -rf /var/lib/apt/lists/*
EXPOSE 80
COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT /usr/local/bin/entrypoint.sh
