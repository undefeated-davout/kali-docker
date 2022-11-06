# Kali Linux Docker

[![Push to Docker registry](https://github.com/undefeated-davout/kali-docker/actions/workflows/build.yml/badge.svg)](https://github.com/undefeated-davout/kali-docker/actions/workflows/build.yml)

## 起動

```.bash
docker compose up -d
# or
docker run -td --name kali undefeateddavout/kali-docker
```

## ログイン

```.bash
docker exec -it kali /bin/bash
```
