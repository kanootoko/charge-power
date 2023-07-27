CODE_DIR = charge_power

lint:
	pylint $(CODE_DIR)

format:
	isort $(CODE_DIR)
	black $(CODE_DIR)

clear:
	rm -rf ./dist

build:
	poetry build

publish: clear build
	$(info Do not forget to set `poetry config pypi-token.pypi` and ensure that version is bumped)
	poetry publish

install:
	pip install .

install-dev:
	poetry install

install-dev-pip:
	pip install -e . --config-settings editable_mode=strict
