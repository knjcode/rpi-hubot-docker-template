FROM hypriot/rpi-node

ADD . /hubot

WORKDIR /hubot

RUN npm install

EXPOSE 8080

ENTRYPOINT ["npm", "run"]

CMD ["shell"]
