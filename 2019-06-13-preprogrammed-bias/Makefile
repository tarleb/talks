talk-file = preprogrammed-bias.org

revealjs_archive_url = https://github.com/hakimel/reveal.js/archive/3.8.0.tar.gz

all: preprogrammed-bias.html preprogrammed-bias.pdf

start: talk.html
	sensible-browser $<

talk.html: $(talk-file) reveal.js
	pandoc --standalone --slide-level=2 --to revealjs --css style.css \
		--from org+smart -o $@ $<

talk.pdf: $(talk-file)
	pandoc --standalone --slide-level=2 \
	  --from org \
	  --to beamer \
	  --pdf-engine=xelatex \
	  --variable theme:metropolis \
	  --output $@ $<

reveal.js:
	curl --location -o reveal.js.tgz $(revealjs_archive_url)
	mkdir -p reveal.js
	tar zvxf reveal.js.tgz -C $@ --strip-components 1

clean:
	git clean -dXf

.PHONY: all clean open
