FROM danielguerra/alpine-elasticsearch
MAINTAINER Daniel Guerra <daniel.guerra69@gmail.com>

USER root
RUN /usr/share/java/elasticsearch/bin/elasticsearch-plugin install x-pack --batch

VOLUME ["/usr/share/java/elasticsearch/plugins"]
VOLUME ["/usr/share/java/elasticsearch/config"]
VOLUME ["/usr/share/java/elasticsearch/data"]
EXPOSE 9200 9300
ENTRYPOINT ["docker-entrypoint.sh"]
USER elastico
CMD ["/usr/share/java/elasticsearch/bin/elasticsearch"]
