#!/bin/bash

# Dynamically find the correct Python version in the Conda environment
PYTHON_VERSION=$(python -c 'import sys; print(".".join(map(str, sys.version_info[:2])))')

# Copy the assets to the package's expected location
cp -r flowermd/tests/assets $PREFIX/lib/python${PYTHON_VERSION}/site-packages/flowermd/tests/

# Run the tests
pytest

