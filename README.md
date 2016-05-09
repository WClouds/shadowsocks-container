# shadowsocks-container

##Quick Start

### server-side:
 * `cd config`,then change the passwd to what you want in shadowsocks.conf,default is "passwd".
 * `docker pull colachen/shadowsocks-container`
 * create an directory called config,then touch shadowsocks.conf in it.
 * `mkdir config;cd config;touch shadowsocks.conf`
 * `{
    "server":"0.0.0.0",
    "server_port":6718,
    "local_port":1080,
    "password":"passwd",
    "timeout":600,
    "method":"aes-256-cfb",
    "auth": true
  }`
 * `docker run -v $PWD/config:/app -p 6718:6718 -d colachen/shadowsocks:latest`

### client-side:
 * copy ./config/shadowsocks.conf to anywhere you like,remember to change the ip to the host's ip address,default is "0.0.0.0"
 * keep the config same to server side except ip address.
 * assume that you have installed shadowsocks,if you haven't please google it.Then run `sslocal -c shadowsocks.conf -qq`
