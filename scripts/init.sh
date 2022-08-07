#!/usr/bin/env bash
CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $CWD/../.tmux.conf ~/.tmux.conf
ln -s $CWD/../.config/nvim ~/.config/nviM
