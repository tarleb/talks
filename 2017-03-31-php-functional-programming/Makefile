talk-file = talk.org

all: talk.html talk.tex talk.pdf talk-handout.pdf

start: talk.html
	sensible-browser $<

talk.html: $(talk-file) reveal.js style.css
	pandoc --standalone --slide-level=2 --to revealjs --css style.css \
		-o $@ $<

talk.tex: $(talk-file)
	pandoc --standalone --slide-level=2 --to beamer -o $@ $<

talk.pdf: $(talk-file)
	pandoc --standalone --slide-level=2 --to beamer \
		--latex-engine=xelatex \
		-o $@ $<

talk-handout.pdf: $(talk-file)
	pandoc --standalone --to latex \
		--latex-engine=xelatex \
		-o $@ $<

reveal.js:
	git submodule update --init

clean:
	git clean -dXf

.PHONY: all clean open
