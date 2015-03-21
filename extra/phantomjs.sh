#!/bin/sh

VERSION=2.0.0
PHANTOM_URL="https://s3.amazonaws.com/travis-phantomjs/phantomjs-$VERSION-ubuntu-12.04.tar.bz2"

curl -sS "http://security.ubuntu.com/ubuntu/pool/main/i/icu/libicu48_4.8.1.1-3ubuntu0.5_amd64.deb" > libicu.deb
dpkg -i libicu.deb
echo "-----> Installing phantomjs."

# Just extract the one file (the binary) and not all the examples/readme's/etc.
FILE="phantomjs"
curl -L -sS $PHANTOM_URL -o - | tar -jxf - -C $COMPILE_DIR $FILE
