C=gcc
CFLAGS=-g -std=c99 -fmax-errors=1 -Wall -Werror
MODULES= readPgm.o writePgm.o compare.o
MAINS=pgmEcho.o pgmComp.o pgma2b.o pgmb2a.o pgmTile.o pgmAssemble.o
TARGETS=pgmEcho pgmComp pgma2b pgmb2a pgmTile pgmReduce pgmAssemble

all:		${TARGETS}
all:
	gcc -std=c99 readPgm.c pgmEcho.c writePgm.c -o pgmEcho
	gcc -std=c99 readPgm.c pgmComp.c writePgm.c compare.c -o pgmComp
	gcc -std=c99 readPgm.c writePgm.c pgma2b.c -o pgma2b
	gcc -std=c99 readPgm.c writePgm.c pgmb2a.c -o pgmb2a
	gcc -std=c99 readPgm.c writePgm.c pgmTile.c -o pgmTile
	gcc -std=c99 readPgm.c writePgm.c pgmReduce.c -o pgmReduce
	gcc -std=c99 readPgm.c writePgm.c pgmAssemble.c -o pgmAssemble


clean:
	rm ${TARGETS} ${MAINS} ${MODULES} *.o

pgmEcho:		pgmEcho.o ${MODULES}
		${CC} 		${CCFLAGS} -o pgmEcho 	pgmEcho.o		${MODULES}

pgmComp:		pgmComp.o ${MODULES}
	${CC} 		${CCFLAGS} -o pgmComp 	pgmComp.o		${MODULES}

pgma2b:		pgma2b.o ${MODULES}
	${CC} 		${CCFLAGS} -o pgma2b 	pgma2b.o		${MODULES}

pgmb2a:		pgmb2a.o ${MODULES}
	${CC} 		${CCFLAGS} -o pgmb2a 	pgmb2a.o		${MODULES}

pgmTile:		pgmTile.o ${MODULES}
	${CC} 		${CCFLAGS} -o pgmTile	pgmTile.o		${MODULES}

pgmReduce:		pgmReduce.o ${MODULES}
	${CC} 		${CCFLAGS} -o pgmReduce	pgmReduce.o		${MODULES}

pgmAssemble:		pgmAssemble.o ${MODULES}
	${CC} 		${CCFLAGS} -o pgmAssemble 	pgmAssemble.o		${MODULES}

