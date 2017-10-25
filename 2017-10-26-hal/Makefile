TALK_FILE=talk.org
IMAGE_FILES=$(shell find ./images -name \*.jpg -o -name \*.svg)

talk.pdf: $(TALK_FILE) filters/read-institute.lua $(IMAGE_FILES)
	pandoc $< --output=$@ \
	       --to=beamer --pdf-engine=xelatex \
	       --lua-filter=filters/read-institute.lua \
	       --lua-filter=filters/add-toc.lua \
	       --variable=theme:metropolis

notes.pdf: $(TALK_FILE) filters/read-institute.lua $(IMAGE_FILES)
	pandoc $< --output=$@ \
	       --to=beamer --pdf-engine=xelatex \
	       --lua-filter=filters/read-institute.lua \
	       --lua-filter=filters/add-toc.lua \
	       --metadata='classoption:notes=only' \
	       --variable=theme:metropolis

clean:
	rm -f talk.pdf notes.pdf

.PHONY: clean
