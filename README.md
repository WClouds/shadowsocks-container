# shadowsocks-container

##Quick Start
### server-side:
 * `cd config`,then change the passwd to what you want in shadowsocks.conf,default is "passwd".
 * run `docker pull colachen/shadowsocks-container;docker run -d -p 6718:6718 colachen/shadowsocks:latest 
### client-side:
 * copy ./config/shadowsocks.conf to anywhere you like,remember to change the ip to the host's ip address,default is "0.0.0.0"
 * keep the config same to server side except ip address.
 * assume that you have installed shadowsocks,if you haven't please google it.Then run `sslocal -c shadowsocks.conf -qq`
