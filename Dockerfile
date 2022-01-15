FROM kalilinux/kali-rolling:latest

RUN apt update && apt upgrade -y && \
  DEBIAN_FRONTEND=noninteractive apt install -y \
    kali-linux-headless \
    kali-tools-information-gathering \
    kali-tools-web \
    kali-tools-passwords \
    kali-tools-wireless && \
  apt autoremove
