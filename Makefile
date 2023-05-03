PREFIX ?= /usr

all:
	@echo RUN \'make install\' to install the scripts
	@echo RUN \'make uninstall\' to uninstall the scripts

install:
	@install -Dm755 scripts/yt-music $(DESTDIR)$(PREFIX)/bin/yt-music
	@install -Dm755 scripts/yt-video $(DESTDIR)$(PREFIX)/bin/yt-video
	@install -Dm755 scripts/music-flags $(DESTDIR)$(PREFIX)/bin/music-flags
	@install -Dm755 scripts/video-flags $(DESTDIR)$(PREFIX)/bin/video-flags

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/yt-music
	@rm -f $(DESTDIR)$(PREFIX)/bin/yt-video
	@rm -f $(DESTDIR)$(PREFIX)/bin/music-flags
	@rm -f $(DESTDIR)$(PREFIX)/bin/video-flags
