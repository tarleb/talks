TALK_FILE=talk.org
IMAGE_FILES=$(shell find ./images -name \*.jpg -o -name \*.svg)

talk.pdf: $(TALK_FILE) filters/read-institute.lua $(IMAGE_FILES)
	pandoc $< --output=$@ \
	       --to=beamer --pdf-engine=xelatex \
	       --lua-filter=filters/read-institute.lua \
	       --variable=theme:metropolis

clean:
	rm talk.pdf

.PHONY: clean
