#!/bin/sh
IMG_NM=0mohan0ram/react

CNT_ID=$(docker ps --filter ancestor=$IMG_NM --format "{{.ID}}")

if [ ${#CNT_ID} -gt 0 ];
then
    $(docker rm $(docker kill $CNT_ID))
    echo "cleaned up successfully"
else
    echo "cleaned up not required"
fi