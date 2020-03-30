#!/bin/bash -ex

source ./env # assumes env is adjacent to this script

mkdir -p ${PROJECT_ROOT_DIR}/target
gcc -x c ${SRC_DIR}/hello-world.c -o ${TARGET_DIR}/hello-world.c -E
gcc -x c ${TARGET_DIR}/hello-world.c -o ${TARGET_DIR}/${PROJECT_NAME}.s -S
gcc -x assembler ${TARGET_DIR}/hello-world.s -o ${TARGET_DIR}/${PROJECT_NAME}.o -c
gcc ${TARGET_DIR}/hello-world.o -o ${TARGET_DIR}/${PROJECT_NAME}

