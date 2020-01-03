obj_files = chunk.o main.o debug.o memory.o value.o

clox: $(obj_files)
	clang $(obj_files)

chunk.o:
	clang -c clox/chunk.c

debug.o:
	clang -c clox/debug.c

main.o:
	clang -c clox/main.c

memory.o:
	clang -c clox/memory.c

value.o:
	clang -c clox/value.c

clean:
	rm -f $(obj_files) a.out