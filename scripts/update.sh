#!/bin/sh
USER_GROUP=root:root
SCRIPT_PATH=$(readlink -m $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

if [ -z $1 ];
then
    echo "a project is required to update"
else
    IMG_NM=0mohan0ram/$1
    docker build -t $IMG_NM -f $SCRIPT_DIR/Dockerfile $SCRIPT_DIR
    docker run -v $SCRIPT_DIR/../$1:/app/$1 $IMG_NM npm install --prefix /app/$1
    sudo chown -R $USER_GROUP $SCRIPT_DIR/../$1
fi