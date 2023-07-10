CODE_DIR = charge_power

lint:
	pylint $(CODE_DIR)

format:
	isort $(CODE_DIR)
	black $(CODE_DIR)

build:
	poetry build

install:
	pip install .

install-dev:
	poetry install

install-dev-pip:
	pip install -e . --config-settings editable_mode=strict