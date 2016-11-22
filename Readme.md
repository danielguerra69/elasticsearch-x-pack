# About

Elasticsearch with x-pack plugin installed.
Build from the official elasticsearch repo.

# Usage

Before you start this container make sure
to set the max_map_count on your docker machine.

```bash
sudo sysctl vm.max_map_count=262144000
```

Start the container

```bash
docker run -d danielguerra/elasticsearch-x-pack
```
