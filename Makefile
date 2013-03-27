install:
	# Create parent directory.
	install -d $(DESTDIR)/usr/share/hipache/

	# Create and copy over node_modules, so node will find it later.
	@npm install
	cp -r node_modules $(DESTDIR)/usr/share/hipache/

	# Install binary.
	cp -r lib $(DESTDIR)/usr/share/hipache/
	install bin/hipache $(DESTDIR)/usr/share/hipache/
