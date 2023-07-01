PREFIX ?= /usr

all:
	@echo RUN \'make install\' to install the scripts
	@echo RUN \'make uninstall\' to uninstall the scripts

install:
	@install -Dm755 scripts/yt-music $(DESTDIR)$(PREFIX)/bin/yt-music
	@install -Dm755 scripts/yt-video $(DESTDIR)$(PREFIX)/bin/yt-video
	@install -Dm755 scripts/Music $(DESTDIR)$(PREFIX)/bin/Music
	@install -Dm755 scripts/Video $(DESTDIR)$(PREFIX)/bin/Video

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/yt-music
	@rm -f $(DESTDIR)$(PREFIX)/bin/yt-video
	@rm -f $(DESTDIR)$(PREFIX)/bin/music-flags
	@rm -f $(DESTDIR)$(PREFIX)/bin/video-flags
