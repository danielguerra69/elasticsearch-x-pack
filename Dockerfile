FROM elasticsearch
MAINTAINER Daniel Guerra <daniel.guerra69@gmail.com>

RUN bin/elasticsearch-plugin install x-pack --batch

EXPOSE 9200 9300
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["elasticsearch"]
