# Configuração do Ambiente Docker para HDFS

## Downlad da Imagem do HDFS:

```bash
docker pull mikaelsouza/atmosphere-hdfs:2.7.4
```

Dentro da pasta `scripts` há um script para inicialização dos serviços Docker que inicializa:
* 1 nó mestre do HDFS;
* 3 nós auxiliares do HDFS;
* 1 nó externo para execução do programa Java.

```
# init a docker swarm cluster and listens on localhost
docker swarm init --advertise-addr 127.0.0.1

# create an overlay network
docker network create --driver overlay swarm-net
```

```
docker exec -it $(docker ps -f name=master -q) bash
```