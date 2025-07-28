CFLAGS += -std=c99 -Wall -Wextra
PREFIX ?= /usr

.PHONY: all clean test install

all: 2048

test: 2048
	./2048 -t

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp -p 2048 $(DESTDIR)$(PREFIX)/bin/2048

clean:
	rm -f 2048
