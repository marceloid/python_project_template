.PHONY: install format lint test sec

install:
	poetry install --with dev

format:
	ruff .

lint:
	ruff check .
	# prospector --with-tool pydocstyle --doc-warning --no-autodetect
	# O --no-autodetect é para evitar alertas de erro sobre o pylint-django: https://stackoverflow.com/questions/58918408/python-click-project-django-is-not-available-on-the-pythonpath-error


test:
	pytest

sec:
	pip-audit