example.%: latex-example.tex
	pandoc --from latex                                      \
		--to $*                                          \
		--mathjax                                        \
		--standalone                                     \
		--filter pandoc-citeproc                         \
		--csl ieee.csl                                   \
		--biblio graph-rewriting.bib                     \
		-M reference-section-title=References            \
		-M link-citations=true                           \
		-o $@                                            \
		$<
