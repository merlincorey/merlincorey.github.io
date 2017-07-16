###
### Makefile for merlincorey.github.io
###

# TODO: Change to python3 when kashfa supports it
ENV_PYTHON	=python2
ENV_ACTIVE	=env | grep VIRTUAL_ENV || source env/bin/activate
REQUIREMENTS	=requirements.txt

ALL		=init reveal.js-master

all: $(ALL)
	@echo Completed all

todo:
	@grep -nHR --color=auto 'TODO: ' .

env:
	virtualenv -p $(ENV_PYTHON) env

requirements:
	$(ENV_ACTIVE) && pip install -r $(REQUIREMENTS)

init: env requirements
	@echo Completed initialization

reveal.js-master:
	curl 'https://codeload.github.com/hakimel/reveal.js/zip/master' | unzip -

clean:
	find . -type f -name '*~' -delete
