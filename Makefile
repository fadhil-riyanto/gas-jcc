ASFLAGS=-g

ja1: sys_write.o
	as ./ja/ja1.S -o ja1.o ${ASFLAGS}
	ld ja1.o sys_write.o -o ja1.out

ja2: sys_write.o
	as ./ja/ja2.S -o ja2.o ${ASFLAGS}
	ld ja2.o sys_write.o -o ja2.out

ja_all: ja1 ja2

sys_write.o: sys_write.S
	as sys_write.S -o sys_write.o ${ASFLAGS}

clean: 
	rm -rf *.o
	rm -rf *.out
	rm -rf p
	rm -rf *.a