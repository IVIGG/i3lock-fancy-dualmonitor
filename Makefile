PRGM = i3lock-fancy-dualmonitor
PREFIX ?= /usr
SHRDIR ?= $(PREFIX)/share
BINDIR ?= $(PREFIX)/bin

install:
	@install -Dm755 $(PRGM)  			-t $(DESTDIR)$(BINDIR)
	@install -Dm644 icons/*             -t $(DESTDIR)$(SHRDIR)/$(PRGM)/icons
	@install -Dm644 doc/$(PRGM).1		-t $(DESTDIR)$(SHRDIR)/man/man1
	@install -Dm644 LICENSE             -t $(DESTDIR)$(SHRDIR)/licenses/$(PRGM)
	@echo "$(PRGM) successfully installed !!"

uninstall:
	@unlink $(DESTDIR)$(BINDIR)/$(PRGM) 			# Remove binary
	@rm -Rf $(DESTDIR)$(SHRDIR)/$(PRGM) 			# Remove icons
	@unlink $(DESTDIR)$(SHRDIR)/man/man1/$(PRGM).1 	# Remove man
	@rm -Rf $(DESTDIR)$(SHRDIR)/licenses/$(PRGM) 	# Remove license
	@echo "$(PRGM) successfully uninstalled !!"
