target: symmetry.x check

symmetry.x: symmetry.c
	$(CC) -o symmetry.x -O symmetry.c -lm

check: symmetry.x
	cd tests ; ./check

clean:
	rm symmetry.x
