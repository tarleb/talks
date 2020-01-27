TALK_FILE=talk.md
IMAGE_FILES=$(shell find ./images -name \*.jpg -o -name \*.svg)
FILTER_FILES=$(shell find ./filters -name \*.lua)

talk.pdf: $(TALK_FILE) $(FILTER_FILES) $(IMAGE_FILES)
	pandoc $< --output=$@ \
	       --to=beamer --pdf-engine=xelatex \
	       --lua-filter=filters/graphviz.lua \
	       --self-contained \
	       --slide-level=2 \
	       --variable=theme:metropolis

talk.html: $(TALK_FILE) $(FILTER_FILES) $(IMAGE_FILES)
	pandoc $< --output=$@ \
	       --to=revealjs \
	       --lua-filter=filters/graphviz.lua \
	       --self-contained \
	       --slide-level=2

talk.docx: $(TALK_FILE) $(FILTER_FILES) $(IMAGE_FILES)
	pandoc $< --output=$@ \
	       --lua-filter=filters/graphviz.lua \
	       --self-contained \
	       --slide-level=2

talk.pptx: $(TALK_FILE) $(FILTER_FILES) $(IMAGE_FILES)
	pandoc $< --output=$@ \
	       --lua-filter=filters/graphviz.lua \
	       --self-contained \
	       --slide-level=2

talk-handout.pdf: $(TALK_FILE) $(FILTER_FILES) $(IMAGE_FILES)
	pandoc $< --output=$@ \
	       --pdf-engine=xelatex \
	       --lua-filter=filters/graphviz.lua \
	       --slide-level=2


clean:
	rm -f talk.pdf talk.html

.PHONY: clean
