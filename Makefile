###
### Makefile for merlincorey.github.io
###

ALL	=reveal.js-master

all: $(ALL)
	@echo Completed all


todo:
	@grep -nHR --color=auto 'TODO: ' .

reveal.js-master:
	curl 'https://codeload.github.com/hakimel/reveal.js/zip/master' | unzip -

