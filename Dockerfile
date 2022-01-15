FROM kalilinux/kali-rolling:latest

RUN apt update && apt upgrade -y && \
  apt -y install \
    kali-linux-headless && \
  apt autoremove
