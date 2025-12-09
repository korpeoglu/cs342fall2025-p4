all: sfs make_sfs

sfs: sfs.c
	gcc -O2 -Wall -D_FILE_OFFSET_BITS=64 -DFUSE_USE_VERSION=25 -c -o sfs.o sfs.c
	gcc sfs.o -lfuse -O2 -Wall -D_FILE_OFFSET_BITS=64  -DFUSE_USE_VERSION=25 -o sfs

make_sfs: make_sfs.c
	gcc -Wall -g  -D_FILE_OFFSET_BITS=64 make_sfs.c   -o make_sfs

clean:
	rm -f *~ sfs.o sfs make_sfs
