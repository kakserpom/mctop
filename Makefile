OWNER = root
GROUP = wheel
CFGDIR=/etc
BINDIR=/usr/bin
INSTALL=install
all: 
install:
	$(INSTALL) -c -o $(OWNER) -g $(GROUP) -m 755 mctop $(BINDIR)
	test -f '$(CFGDIR)/mctop.conf' || $(INSTALL) -c -o $(OWNER) -g $(GROUP) -m 644 mctop.conf $(CFGDIR)

deinstall:
	-rm $(BINDIR)/mctop
	-rm $(CFGDIR)/mctop.conf

