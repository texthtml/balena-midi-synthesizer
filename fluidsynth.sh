#!/usr/bin/env sh

fluidsynth \
    --portname "${PORTNAME:=fluidsynth}" \
    --server \
    --no-shell \
    --audio-driver pulseaudio \
    --gain "${GAIN:-0.2}" \
    --chorus "${CHORUS:on}" \
    --reverb "${REVERB:on}" \
    --audio-bufsize "${AUDIO_BUFSIZE:-2048}" \
    -o "shell.port=${SHELL_PORT:-9988}" \
    -o "audio.realtime-prio=${AUDIO_REALTIME_PRIO:-99}" \
    -o "midi.realtime-prio=${MIDI_REALTIME_PRIO:-99}" \
    -o "synth.cpu-cores=${SYNTH_CPU_CORES:-$(nproc)}" \
    -o "synth.default-soundfont=${SYNTH_DEFAULT_SOUNDFONT:-/soundfonts/default.sf2}" \
    --sample-rate "${SAMPLE_RATE:=44100}"
