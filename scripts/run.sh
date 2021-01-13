#!/bin/sh
SCRIPT_PATH=$(readlink -m $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

if [ -z $1 ];
then
    echo "a project is required to run"
else
    IMG_NM=0mohan0ram/$1
    docker build -t $IMG_NM -f $SCRIPT_DIR/Dockerfile $SCRIPT_DIR
    docker run -e PORT=3001 -p 3001:3001 -v $SCRIPT_DIR/../$1:/app/$1 $IMG_NM npm start --prefix /app/$1
fi

