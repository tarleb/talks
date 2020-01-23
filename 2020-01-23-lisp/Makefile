talk-file = lisp.org

revealjs_archive_url = https://github.com/hakimel/reveal.js/archive/3.8.0.tar.gz

all: lisp.pdf lisp.html

lisp.pdf: $(talk-file)
	pandoc --standalone --slide-level=1 \
	  --from org \
	  --to beamer \
	  --pdf-engine=xelatex \
	  --variable theme:metropolis \
	  --output $@ $<

lisp.html: $(talk-file) reveal.js
	pandoc --standalone \
	       --slide-level=1 \
	       --to=revealjs \
	       --css=style.css \
	       --from=org+smart \
	       --output=$@ $<

reveal.js:
	curl --location -o reveal.js.tgz $(revealjs_archive_url)
	mkdir -p reveal.js
	tar zvxf reveal.js.tgz -C $@ --strip-components 1

clean:
	git clean -dXf

.PHONY: all clean open
