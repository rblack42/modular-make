.PHONY: html
html:
	cd rst && sphinx-build -b html -d _build/doctrees . ../docs
