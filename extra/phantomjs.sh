#!/bin/sh

VERSION=2.0.0
PHANTOM_URL="https://s3.amazonaws.com/travis-phantomjs/phantomjs-$VERSION-ubuntu-12.04.tar.bz2"

echo "-----> Installing phantomjs."

# Just extract the one file (the binary) and not all the examples/readme's/etc.
FILE="phantomjs"
curl -L -sS $PHANTOM_URL -o - | tar -jxf - -C $COMPILE_DIR $FILE
