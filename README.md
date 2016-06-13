# docker-nginx-limit-req

Execute docker-compose.

```
$ docker-compose up
```

In the other terminal, execute req.sh.

```
$ ./req.sh
```

Then you can see the following error log.

```
nginx_1 | 192.168.99.1 - - [13/Jun/2016:15:35:34 +0000] "GET / HTTP/1.1" 200 612 "-" "curl/7.43.0" "-"
nginx_1 | 2016/06/13 15:35:35 [error] 8#8: *18 limiting requests, excess: 0.995 by zone "five", client: 192.168.99.1, server: localhost, request: "GET / HTTP/1.1", host: "192.168.99.100"
nginx_1 | 192.168.99.1 - - [13/Jun/2016:15:35:35 +0000] "GET / HTTP/1.1" 200 612 "-" "curl/7.43.0" "-"
nginx_1 | 192.168.99.1 - - [13/Jun/2016:15:35:35 +0000] "GET / HTTP/1.1" 429 0 "-" "curl/7.43.0" "-"
```
