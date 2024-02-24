FROM alpine:3.19

ADD ${DEFAULT_SOUNDFONT:-https://ftp.osuosl.org/pub/musescore/soundfont/MuseScore_General/MuseScore_General.sf3} \
    ${SYNTH_DEFAULT_SOUNDFONT:-/usr/share/soundfonts/MuseScore_General.sf3}

RUN apk add --no-cache fluidsynth

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]

ADD fluidsynth.sh /fluidsynth.sh

CMD /fluidsynth.sh

ENV ENABLED=true
