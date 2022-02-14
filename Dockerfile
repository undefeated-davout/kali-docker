FROM kalilinux/kali-rolling:latest

RUN apt update && apt upgrade -y && \
  DEBIAN_FRONTEND=noninteractive apt install -y \
    kali-linux-headless \
    kali-tools-information-gathering \
    kali-tools-web \
    kali-tools-passwords \
    kali-tools-wireless \
    dnsutils \
    iputils-ping \
    net-tools \
  && apt autoremove && apt autoclean

# confgを取得
RUN git clone https://github.com/undefeated-davout/linux-config.git
ARG CONFIG_DIR=linux-config

# bash設定
RUN cat ./${CONFIG_DIR}/.bashrc >> ~/.bashrc
# tmux設定
RUN cp ./${CONFIG_DIR}/.tmux.conf /root/.tmux.conf
# Git設定
RUN cp ./${CONFIG_DIR}/.gitconfig /root/.gitconfig
RUN rm -rf ./${CONFIG_DIR}/

# 日本語設定
RUN locale-gen ja_JP.UTF-8

WORKDIR /share

