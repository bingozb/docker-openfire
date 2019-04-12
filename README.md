# docker-openfire
Docker image for openfire version 4.3.2

## Usage

```sh
$ docker run --name openfire -d --restart=always \
  -p 9090:9090 -p 5222:5222 -p 7777:7777 \
  registry.cn-shenzhen.aliyuncs.com/macrowolf/openfire
```

### Docker-compose

```sh
openfire:
  restart: always
  image: registry.cn-shenzhen.aliyuncs.com/macrowolf/openfire
  container_name: openfire
  volumes:
    - /home/deploy/data/openfire:/var/lib/openfire
  ports:
    - 9090:9090
    - 5222:5222
    - 7777:7777
```

Setup openfire server by navigating the web browser to `http://localhost:9090`.