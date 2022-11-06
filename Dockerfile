FROM kalilinux/kali-rolling:latest

RUN apt update && \
  DEBIAN_FRONTEND=noninteractive apt install -y \
    kali-linux-headless \
    kali-linux-default \
    kali-tools-information-gathering \
    kali-tools-vulnerability \
    kali-tools-web \
    kali-tools-database \
    kali-tools-passwords \
    kali-tools-exploitation \
    kali-tools-social-engineering \
    kali-tools-post-exploitation \
    dnsutils \
    iputils-ping \
    net-tools \
  && apt autoremove && apt autoclean

WORKDIR /share
