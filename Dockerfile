FROM node:16-bullseye

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y bash frotz && ln -s /usr/games/dfrotz /usr/bin/dfrotz
RUN npm install -g discord-frotz

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["cd /discord-frotz && discord-frotz"]
