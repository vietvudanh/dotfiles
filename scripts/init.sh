#!/usr/bin/env bash
CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# ln -s $CWD/../.tmux.conf ~/.tmux.conf
# ln -s $CWD/../.config/nvim ~/.config/nvim
# mkdir ~/.config/zed \
#     && ln -s $CWD/../.config/zed/setings.json ~/.config/zed/setings.json \
#     && ln -s $CWD/../.config/zed/keymap.json ~/.config/zed/keymap.json

# vim need: https://github.com/dandavison/delta?tab=readme-ov-file
# brew install git-delta
ln -s $CWD/../.gitconfig ~/.gitconfig
