#################################################################
# Plank node distribution with supervisord & node-gyp installed
# Build command:
#			$ docker build -t plank/node -f planknode.dockerfile .
# Push to docker.io/hub.docker.com
#			$ docker push plank/node
#################################################################
FROM node:0.12
RUN chown -R root /usr/local && chgrp -R root /usr/local

RUN apt-get update && \
			npm install -g node-gyp && \
 			apt-get install -y supervisor

CMD [ "node" ]
