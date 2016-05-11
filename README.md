# shadowsocks-container

##Quick Start

### server-side:
 * `cd config`,then change the passwd to what you want in shadowsocks.conf,default is "passwd".
 * `docker pull colachen/shadowsocks-container`
 * create an directory called config,then touch shadowsocks.conf in it.
 * `mkdir config;cd config;touch shadowsocks.conf`
 * `{
    "server": "0.0.0.0",
    "port_password": {
        "8381": "foobar1",
        "8382": "foobar2",
        "8383": "foobar3",
        "8384": "foobar4"
    },
    "timeout": 300,
    "method": "aes-256-cfb"
}`
 * `docker run -v $PWD/config/:/app/ -p 8381-8384:8381-8384 -d colachen/shadowsocks:latest`

### client-side:
 * copy ./config/shadowsocks.conf to anywhere you like,remember to change the ip to the host's ip address,default is "0.0.0.0"
 * choose any port above you like, each port has special password.
 * `{
    "server":"my_server_ip",
    "server_port":8381,
    "local_port":1080,
    "password":"foobar1",
    "timeout":300,
    "method":"aes-256-cfb",
    "auth": true
}`
 * assume that you have installed shadowsocks,if you haven't please google it.Then run `sslocal -c shadowsocks.conf -qq`
