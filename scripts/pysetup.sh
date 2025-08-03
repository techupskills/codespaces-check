#!/usr/bin/env bash

PYTHON_ENV=$1

python3 -m venv ./$PYTHON_ENV \
    && export PATH=./$PYTHON_ENV/bin:$PATH \
    && grep -qxF "source $(pwd)/$PYTHON_ENV/bin/activate" ~/.bashrc || echo "source $(pwd)/$PYTHON_ENV/bin/activate" >> ~/.bashrc

source ./$PYTHON_ENV/bin/activate

if [ -f "./requirements.txt" ]; then
  pip3 install -r "./requirements.txt"
else
  pip3 install -r "/workspaces/ai-agents/requirements/requirements.txt"
fi
