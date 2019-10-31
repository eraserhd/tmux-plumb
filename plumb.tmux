#!/usr/bin/env bash

SCRIPTS="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/scripts"

tmux bind -Tcopy-mode-vi Enter '\
    run-shell '"$SCRIPTS"'/plumb ;\
    send-keys -X cancel
'
tmux bind -Tcopy-mode-vi M-Enter run-shell $SCRIPTS/plumb
