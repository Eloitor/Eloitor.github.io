md_files = $(shell find src/ -type f -name '*.md')
html_files = $(patsubst src/%.md, web/%.html, $(md_files))

other_files_src = $(shell find src/ -type f \( -iname \*.jpg -o -iname \*.png -o -iname \*.css -o -iname \*.html \))
other_files_web = $(patsubst src/%, web/%, $(other_files_src))

.PHONY: all clean
all: $(html_files) $(other_files_web)

web/%.html: src/%.md templates/webpage.html

	$(eval lang=$(word 2,$(subst /," ",$@)))

	mkdir -p "$(@D)"
	pandoc -f gfm \
		--template templates/webpage.html \
		--css $(shell (echo $(patsubst web/%, %, $(@D)) | sed "s/[^/]*/../g"))/styles.css \
		-V root=$(shell (echo $(patsubst web/%, %, $(@D)) | sed "s/[^/]*/../g")) \
		--metadata title="Eloi Torrents" \
		-V $(lang) \
		$< -o $@

web/%: src/%
	mkdir -p "$(@D)"
	cp $< $@

clean:
	rm -rf web

# 	pandoc index.md --template=template.tex --pdf-engine=xelatex -o index.pdf
