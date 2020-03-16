FROM ubuntu:16.04
LABEL OWNER="samba"
LABEL EMAIL="sambasivarao.yarram@gmail.com"
ENV REPO="https://github.com/mavaric202/dockertest1.git"
RUN apt update \
    && apt install -y nginx net-tools curl unzip wegt git \
    && git clone ${REPO} /tmp/website \
    && cp index.html /var/www/html/index.nginx-debian.html \
    && cp scorekeepr.js /var/www/html \
    && cp style.css /var/www/html
CMD ["nginx","-g","daemon off;"]