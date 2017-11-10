TALK_FILE=talk.md
IMAGE_FILES=$(shell find ./images -name \*.jpg -o -name \*.svg)
FILTER_FILES=$(shell find ./filters -name \*.lua)

talk.pdf: $(TALK_FILE) $(FILTER_FILES) $(IMAGE_FILES)
	pandoc $< --output=$@ \
	       --to=beamer --pdf-engine=xelatex \
	       --lua-filter=filters/drop-abstract.lua \
	       --lua-filter=filters/copy.lua \
	       --lua-filter=filters/latex-commands.lua \
	       --lua-filter=filters/include.lua \
	       --lua-filter=filters/graphviz.lua \
	       --lua-filter=filters/latex-divs.lua \
	       --self-contained \
	       --slide-level=2 \
	       --variable=theme:metropolis

clean:
	rm -f talk-handout.pdf talk.pdf talk.html

talk-thesis.pdf: $(TALK_FILE) $(IMAGE_FILES)
	cd malte-template && pandoc ../$< --output=../$@ \
	       --to=latex --pdf-engine=xelatex \
	       --lua-filter=../filters/drop-abstract.lua \
	       --lua-filter=../filters/fix-paths.lua \
	       --lua-filter=../filters/latex-commands.lua \
	       --lua-filter=../filters/include.lua \
	       --lua-filter=../filters/graphviz.lua \
	       --lua-filter=../filters/latex-divs.lua \
	       --self-contained \
	       --template=thesis-template.latex

.PHONY: clean
