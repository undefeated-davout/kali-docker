FROM kalilinux/kali-rolling:latest

RUN apt update -y && apt upgrade -y && \
  apt -y install \
    kali-linux-headless && \
  apt autoremove
