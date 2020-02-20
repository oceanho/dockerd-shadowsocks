# dockerd-shadowsocks

Quicky deploy a shadowsocks ss-server && ss-local.

## how it's work ?

ssh tunnel + shadowsocks(ss-server/ss-local)

## how to deploy & use it ?

On server.

``` shell
#
#ss-server info(On server-side)
#  port: 58388
#  password: RjN4aCd
#  method: rc4-md5
docker run -d --name ss-server --network host \
  tommylau/shadowsocks:latest -s 127.0.0.1 -p 58388 -k RjN4aCd -m rc4-md5

#ss-local info(On server-side too.)
docker run --name ss-local --network host --entrypoint /usr/local/bin/ss-local \
  tommylau/shadowsocks:latest -s 127.0.0.1 -p 58388 -l 10800 -k RjN4aCd -m rc4-md5
  
# client(Your PC)
ssh -NfL 127.0.0.1:10800:127.0.0.1:10800 root@199.199.199.199 #(here is your ss-server remote IP addr.)
# Configurate your proxy software(SwitchyOmega on chrome or set HTTP_PROXY,SOCKS_PROXY environment variables.)
# PROXY address is 127.0.0.1:10800. any happy now.

```

## references

[https://github.com/TommyLau/docker-shadowsocks](https://github.com/TommyLau/docker-shadowsocks)
