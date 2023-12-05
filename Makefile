
default:
	@echo 'make install?'
	@false
.PHONY: default

install: /usr/bin/unpack
.PHONY: install

/usr/bin/unpack: usr/local/bin/unpack
	install $< $@
