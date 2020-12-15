md_files = $(shell find src/ -type f -name '*.md')
html_files = $(patsubst src/%.md, bin/%.html, $(md_files))

other_files_src = $(shell find src/ -type f -name '*.jpg ')$(shell find src/ -type f -name '*.css')
other_files_bin = $(patsubst src/%, bin/%, $(other_files_src))

.PHONY: all
all: $(html_files) $(other_files_bin) bin/.htaccess


bin/ca/%.html: src/ca/%.md src/templates/webpage.html
	mkdir -p "$(@D)"
	pandoc  --template src/templates/webpage.html \
		--css $(shell (echo $(patsubst bin/%, %, $(@D)) | sed "s/[^/]*/../g"))/styles.css \
		-V root=$(shell (echo $(patsubst bin/%, %, $(@D)) | sed "s/[^/]*/../g")) \
		--metadata title="Eloi Torrents" \
		-V ca \
		$< -o $@
bin/en/%.html: src/en/%.md src/templates/webpage.html
	mkdir -p "$(@D)"
	pandoc  --template src/templates/webpage.html \
		--css $(shell echo $(patsubst bin/%, %, $(@D)) | sed "s/[^/]*/../g")/styles.css \
		--metadata title="Eloi Torrents" \
		-V en \
		$< -o $@

bin/%: src/%
	cp $< $@

# 	pandoc index.md --template=template.tex --pdf-engine=xelatex -o index.pdf
