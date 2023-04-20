#!/bin/sh
set -euo pipefail

SETUP_SH=${SETUP_SH:-"/usr/libexec/setup.sh"}
MAIN_SH=${MAIN_SH:-"/usr/libexec/main.sh"}

# Execute setup scripts
if test -e "$SETUP_SH"; then
    "$SETUP_SH"
fi

# Execute runloop script
echo "*> Container is ready, starting runloop..."
if test -e "$MAIN_SH"; then
    exec "$MAIN_SH"
else
    # Use fallback loop
    echo "    warning: $MAIN_SH not found; starting bash..."
    exec "/bin/sh"
fi 
