CFLAGS ?= -O -Wall -Werror
CPPFLAGS ?=
LDLIBS ?= -lm
PREFIX ?= /usr/local
INSTALL_TARGET_DIR := $(DESTDIR)$(PREFIX)/bin

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

$(INSTALL_TARGET_DIR):
	mkdir -p "$@"

.PHONY: install
install: symmetry.x $(INSTALL_TARGET_DIR)
	install -m 755 "$<" "$(INSTALL_TARGET_DIR)/$<"
