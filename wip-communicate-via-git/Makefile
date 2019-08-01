talk-file = talk.org

revealjs_archive_url = https://github.com/hakimel/reveal.js/archive/3.8.0.tar.gz

all: talk.html

start: talk.html
	sensible-browser $<

talk.html: $(talk-file) reveal.js
	pandoc --standalone \
	  --slide-level=2 \
	  --to=revealjs \
	  --output=$@ $<

talk.pdf: $(talk-file)
	pandoc --standalone \
	  --slide-level=2 \
	  --to=beamer \
	  --pdf-engine=xelatex \
	  --variable=theme:metropolis \
	  --output=$@ $<

reveal.js:
	curl --location -o reveal.js.tgz $(revealjs_archive_url)
	mkdir -p reveal.js
	tar zvxf reveal.js.tgz -C $@ --strip-components 1

clean:
	git clean -dXf

.PHONY: all clean open
