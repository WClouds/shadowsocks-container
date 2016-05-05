docker build -t shadowsocks:latest . && \
docker run -d \
-v $PWD/config:/app \
-p 6718:6718 shadowsocks:latest \
