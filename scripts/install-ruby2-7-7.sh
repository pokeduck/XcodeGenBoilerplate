#!/bin/sh
HOMEDIR=$HOME
if [ -d "$HOMEDIR/.rbenv/versions/2.7.7" ] 
then
    echo "Ruby version 2.7.7 already install."
else
    echo "Ruby version 2.7.2 is not currently installed."
    rbenv install 2.7.7
fi
	
    rbenv local 2.7.7
    rbenv rehash
    gem install bundler
