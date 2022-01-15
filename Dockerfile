FROM kalilinux/kali-rolling:latest

RUN apt update && apt upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt install kali-linux-headless -y
RUN DEBIAN_FRONTEND=noninteractive apt install kali-tools-web -y
RUN apt autoremove
