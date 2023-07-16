install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
test:
	python -m pytest -vvv --cov=hello --cov=greeting \
		--cov=s math --cov=web tests
	python -m pytest --nbval notebook.ipynb #test jupyter notebooks
	# python -m pytest -v tests/test_web.py # if just want to test the web
debug:
	python -m pytest -vv --pdb #Debugger is invoked
one-test:
	python -m pytest -vv tests/test_greeting.py::test_my_name4