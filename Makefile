###########################################

MD := $(wildcard ./*.md)
TEST := 
HTML := $(MD:.md=.html)
PDF  := $(MD:.md=.pdf)

###########################################

DATE := $(shell date -u '+%Y-%m-%d')
PANDOCVERSION := $(shell pandoc --version | head -1 )

###########################################

all: clean html pdf

clean: clean_html clean_pdf

preview: preview_html

preview_html: html
	open $(HTML)
	
preview_pdf: pdf
	open $(PDF)
	
###########################################

html: $(HTML)

%.html : %.md
	pandoc -s $< -o $@ --metadata date="$(DATE) - $(PANDOCVERSION)" 

clean_html:
	-rm $(HTML)
	
###########################################

pdf: $(PDF)

%.pdf : %.md
	pandoc -s $< -o $@ --metadata date="$(DATE) - $(PANDOCVERSION)" 
	
clean_pdf:
	-rm $(PDF)
	
###########################################
###########################################

list_variables:
	@echo
	@echo "#############################################"
	@echo "## Variables ################################"
	@make -pn | grep -A1 "^# makefile"| grep -v "^#\|^--" | sort | uniq
	@echo "#############################################"
	@echo "#############################################"

## from https://stackoverflow.com/a/26339924/632423
list_targets:
	@echo
	@echo "#############################################"
	@echo "## Targets    ###############################"
	@make -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/^# File/,/^# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'
	@echo "#############################################"
	@echo "#############################################"

list: list_variables list_targets html2 ./%.html