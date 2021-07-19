#/bin/bash

set -ex

# install CI dependencies
pip install -r requirements-dev.txt

# run tests
python setup.py test

# check static types
mypy --strict --ignore-missing-imports guesslangtools

# check code quality
flake8 .
