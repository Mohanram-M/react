#!/bin/sh
USER_GROUP=root:root
SCRIPT_PATH=$(readlink -m $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

if [ -z $1 ];
then
    echo "project name is required"
else
    IMG_NM=0mohan0ram/react
    docker build -t $IMG_NM -f $SCRIPT_DIR/Dockerfile $SCRIPT_DIR
    docker run -v $SCRIPT_DIR/../$1:/app/$1 -i -t $IMG_NM create-react-app $1 
    sudo chown -R $USER_GROUP $SCRIPT_DIR/../$1
fi
