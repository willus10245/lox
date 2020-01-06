obj_files = chunk.o compiler.o debug.o main.o memory.o scanner.o value.o vm.o

clox: $(obj_files)
	clang $(obj_files) -o lox

chunk.o:
	clang -c clox/chunk.c

compiler.o:
	clang -c clox/compiler.c

debug.o:
	clang -c clox/debug.c

main.o: vm.o
	clang -c clox/main.c

memory.o:
	clang -c clox/memory.c

scanner.o:
	clang -c clox/scanner.c

value.o:
	clang -c clox/value.c

vm.o:
	clang -c clox/vm.c

clean:
	rm -f $(obj_files) a.out lox