#!/bin/bash

abs_path () {
    path=`cd "$1"; pwd`
    echo "$path"
}

export SCRIPT_DIR=$(abs_path $(dirname $0))

cd $SCRIPT_DIR

docker-compose -f docker-compose-cn.yml $@
