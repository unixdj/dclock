# Please read the accompanying README file before running Make
SRCS= Dclock.c dclock.c
OBJS= Dclock.o dclock.o
HFILES= Dclock.h DclockP.h patchlevel.h

CFLAGS= -O -I/usr/local/include
LDFLAGS= -L/usr/local/lib
LIBS= -lXt -lX11

dclock: ${OBJS}
	cc ${LDFLAGS} ${OBJS} ${LIBS} -o dclock

clean: ; rm -f ${OBJS} core dclock

shar: ; shar README Makefile dclock.man ${HFILES} ${SRCS} > dclock.shar

tar: ; tar fcv - README Makefile dclock.man ${HFILES} ${SRCS} | \
	compress > dclock.tar.Z
