#!/usr/bin/env bash
CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $CWD/.env

cp "$SUBLIME_FOLDER/User/Package Control.sublime-settings" $CWD/User
cp "$SUBLIME_FOLDER/User/Default (OSX).sublime-keymap" $CWD/User

find "$SUBLIME_FOLDER/User/" -iname "*sublime-snippet" -exec cp -- "{}" "$CWD/User" \;
find "$SUBLIME_FOLDER/User/" -iname "*.py" -exec cp -- "{}" "$CWD/User" \;
