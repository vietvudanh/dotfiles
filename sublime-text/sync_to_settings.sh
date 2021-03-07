#!/usr/bin/env bash
CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $CWD/.env

cp $CWD/User/* "$SUBLIME_FOLDER/User/"
