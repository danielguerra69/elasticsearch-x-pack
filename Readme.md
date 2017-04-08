# About

Elasticsearch with x-pack plugin installed.
Build from the official elasticsearch repo.

# Usage

Before you start this container make sure
to set the max_map_count on your docker host.

```bash
sudo sysctl vm.max_map_count=262144
```

Start the elasticsearch container

```bash
docker run --name es-xpack -d danielguerra/elasticsearch-x-pack
```

Optional start kibana x-pack
```bash
docker run -p 5601:5601 --link es-xpack:elasticsearch --name kb-xpack -d danielguerra/kibana-x-pack
```
login with
user: elastic
pass: changeme
