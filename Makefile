PREFIX ?= /usr

all:
	@echo RUN \'make install\' to install the scripts

install:
	@install -Dm755 yt-music $(DESTDIR)$(PREFIX)/bin/yt-music
	@install -Dm755 yt-video $(DESTDIR)$(PREFIX)/bin/yt-video
	@install -Dm755 music-flags $(DESTDIR)$(PREFIX)/bin/music-flags
	@install -Dm755 video-flags $(DESTDIR)$(PREFIX)/bin/video-flags
	@install -Dm755 yt-tui $(DESTDIR)$(PREFIX)/bin/yt-tui

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/yt-music
	@rm -f $(DESTDIR)$(PREFIX)/bin/yt-video
	@rm -f $(DESTDIR)$(PREFIX)/bin/music-flags
	@rm -f $(DESTDIR)$(PREFIX)/bin/video-flags
	@rm -f $(DESTDIR)$(PREFIX)/bin/yt-tui
