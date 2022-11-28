.PHONY: venv
venv:	## Create Python virtual environment
	test -d .venv || \
	python3 -m venv .venv

.PHONY: init
init:  ## update pip and install pip-tools
	pip install -U pip
	pip install pip-tools
	cp ~/_sys/tikzmagic.py .venv/python-3.10.8/lib/python3.10/site-packages

.PHONY: reqs
reqs: requirements.in 	## Load Python requirements
	pip-compile --resolver=backtracking
	pip install -r requirements.txt

.PHONY: changes
changes:	## create CHANGES file from git logs
	git log --oneline --pretty=format:"* %ad: %s" --date=short > CHANGES
