#!/usr/bin/env sh

if [ "$ENABLED" != "true" ]; then
    echo service server disable because \$ENABLED ≠ true

    tail -f /dev/null

    exit
fi

"$@"
