FROM dockerfile/nodejs

ADD . /statbot

RUN cd /statbot && make install

WORKDIR /statbot
VOLUME [ "/statbot/src/config" ]
VOLUME [ "/statbot/data" ]
CMD ["make", "run"]
