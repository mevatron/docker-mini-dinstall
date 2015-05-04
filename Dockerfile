FROM ubuntu-debootstrap:14.04
MAINTAINER Martijn van Maurik <docker@vmaurik.nl>

VOLUME /data

RUN apt-get update && apt-get dist-upgrade -y && \
    apt-get install mini-dinstall -yq

ADD mini-dinstall.conf /etc/mini-dinstall.conf
ADD start.sh /start.sh

run chmod +x /start.sh

CMD ["/start.sh"]