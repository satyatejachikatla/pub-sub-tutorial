### Start Kafka server

```
docker-compose up -d
```

### Setup proucer , consumer

```
pip3 install virtualenv
virtualenv ./pip3-env
. ./pip3-env/bin/activate
pip3 install -r requirements.txt
```

### Go through example.sh

```
. ./pip3-env/bin/activate
```

### Reference

* Confluent : https://docs.confluent.io/platform/current/quickstart/ce-docker-quickstart.html#ce-docker-quickstart
* Docker-compose : https://docs.docker.com/compose/install/
* Tutorial : https://www.youtube.com/watch?v=R873BlNVUB4