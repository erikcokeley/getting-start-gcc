#!/bin/bash -e

source ./env # assumes env is adjacent to this script

FLAGS="@my-special-flags -aux-info ${TARGET_DIR}/${PROJECT_NAME}-aux-info.txt -std=c11"

mkdir -p ${PROJECT_ROOT_DIR}/target
echo "--------PREPROCESSOR----------"
gcc ${FLAGS} -x c ${SRC_DIR}/hello-world.c -o ${TARGET_DIR}/hello-world.c -E && echo "Success"
echo "--------COMPILATION----------"
gcc ${FLAGS} -x c ${TARGET_DIR}/hello-world.c -o ${TARGET_DIR}/${PROJECT_NAME}.s -S && echo "Success"
echo "--------ASSEMBLER----------"
gcc ${FLAGS} -x assembler ${TARGET_DIR}/hello-world.s -o ${TARGET_DIR}/${PROJECT_NAME}.o -c && echo "Success"
echo "--------LINKER----------"
gcc ${FLAGS} ${TARGET_DIR}/hello-world.o -o ${TARGET_DIR}/${PROJECT_NAME} && echo "Success"
echo "------------------"

