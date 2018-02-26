.PHONY: spinit
spinit:	## initialize sphinx docs
	mkdir -p docs/_static
	mkdir -p docs/_templates
	cp ~/_sys/templates/conf.py docs
	cp ~/_sys/templates/index.rst docs
	cp -R ~/_sys/templates/sphinx_exts docs
	cp ~/_sys/templates/Makefile docs

