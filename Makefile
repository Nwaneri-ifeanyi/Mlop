# Install dependencies
install:
	pip install --upgrade pip && \
	pip install -r requirements.txt

# Install dependencies for AWS CodeBuild
install-aws:
	pip install --upgrade pip && \
	pip install -r requirements.txt

# Lint the code
lint:
	pylint --disable=R,C hello.py

# Run tests with coverage
test:
	python -m pytest -vv --cov=hello test_hello.py
