talk.html: talk.org reveal.js
	pandoc --standalone --to revealjs -o $@ $<

talk.pdf: talk.org
	pandoc --standalone --to beamer -o $@ $<

talk-handout.pdf: talk.org
	pandoc --standalone --to latex -o $@ $<

reveal.js:
	git submodule update --init

clean:
	rm talk-handout.pdf talk.pdf talk.html

.PHONY: clean
