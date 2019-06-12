CC = gcc

DIR_INC = ./include
DIR_SRC = ./src
DIR_OBJ = ./obj
DIR_BIN = ./bin
SRC = $(wildcard ${DIR_SRC}/*.c) \
	$(wildcard ${DIR_SRC}/daemon/*.c)
OBJ = $(patsubst %.c,${DIR_OBJ}/%.o,$(notdir ${SRC}))
TARGET = main
BIN_TARGET = ${DIR_BIN}/${TARGET}
CFLAGS = -g -Wall -I${DIR_INC}

${BIN_TARGET} : ${OBJ}
	${CC} ${CFLAGS} ${OBJ}  -o $@

${DIR_OBJ}/%.o : ${SRC}
	$(CC) ${CFLAGS} -c $?
	-mv *.o $(DIR_OBJ)/


.PHONY : clean run
clean:
	-rm -f ${DIR_OBJ}/*.o ${BIN_TARGET}

run:
	${BIN_TARGET}
