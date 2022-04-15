FROM node:16-alpine

RUN apk add bash frotz
RUN npm install -g discord-frotz

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["cd /discord-frotz && discord-frotz"]
