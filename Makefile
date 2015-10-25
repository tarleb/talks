markdown_extensions = "+lists_without_preceding_blankline-implicit_figures"

html-presentation: nook2015.html

beamer-presentation: nook2015.pdf

handout: nook2015-handout.pdf

nook2015.html: nook2015.md reveal.js
	pandoc --template=revealjs.tmpl --standalone --from markdown${markdown_extensions} --to revealjs -o $@ $<

nook2015.pdf: nook2015.md
	pandoc --standalone --from markdown${markdown_extensions} --to beamer -o $@ $<

nook2015-handout.pdf: nook2015.md
	pandoc --standalone --from markdown${markdown_extensions} --to latex -o $@ $<

reveal.js:
	git submodule update --init

.PHONY: html-presentation
