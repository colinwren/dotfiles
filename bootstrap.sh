#!/bin/bash
cd "$(dirname "${BASH_SOURCE}")"
git pull
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
}
	doIt
unset doIt
source ~/.bash_profile
