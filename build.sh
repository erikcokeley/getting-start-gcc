#!/bin/bash -ex

source ./env # assumes env is adjacent to this script

mkdir -p ${PROJECT_ROOT_DIR}/target
gcc ${SRC_DIR}/hello-world.c -o ${TARGET_DIR}/${PROJECT_NAME}
