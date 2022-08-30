CFLAGS ?= -O
CPPFLAGS ?=
LDLIBS ?= -lm

.PHONY: target
target: symmetry.x check

%.x: %.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ $< $(LDLIBS)

.PHONY: check
check: symmetry.x
	cd tests ; ./check

.PHONY: clean
clean:
	rm -f symmetry.x
