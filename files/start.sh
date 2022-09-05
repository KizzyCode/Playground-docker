#!/bin/sh
set -euo pipefail

SETUP_SH=${SETUP_SH:-"/usr/libexec/setup.sh"}
RUNLOOP_SH=${RUNLOOP_SH:-"/usr/libexec/runloop.sh"}

# Execute setup scripts
if test -e "$SETUP_SH"; then
    "$SETUP_SH"
fi

# Execute runloop script
echo "*> Container is ready, starting runloop..."
if test -e "$RUNLOOP_SH"; then
    "$RUNLOOP_SH"
else
    # Use fallback loop
    echo "    warning: $RUNLOOP_SH not found; using default runloop..."
    while true; do
        sleep 1
    done
fi 
