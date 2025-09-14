
default:
	@echo 'make install perhaps?'
	@false
.PHONY: default

PREFIX = /usr/bin
SOURCES = unpack unpack-iso
INSTALL_TARGETS = $(addprefix $(PREFIX)/,$(SOURCES))

install: $(INSTALL_TARGETS)
.PHONY: install

$(INSTALL_TARGETS): $(PREFIX)/%: %
	install --compare $< $@
