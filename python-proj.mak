include project-id.mak

.PHONY:	init
init:
	mkdir -p app
	python3 -m venv _venv
	_venv/bin/activate
	pip3 install -r requirements.txt
