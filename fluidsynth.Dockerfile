FROM alpine:3.14

RUN apk add --no-cache fluidsynth

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

ADD fluidsynth.sh /fluidsynth.sh

CMD /fluidsynth.sh

ENV ENABLED=true
