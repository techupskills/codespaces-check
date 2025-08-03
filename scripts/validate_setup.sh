#!/usr/bin/env bash

set -e

echo "🔍 Validating development environment setup..."

# Check Python virtual environment
if [[ ! -d .venv && ! -d py_env ]]; then
  echo "❌ Python virtual environment not found (.venv or py_env)"
  exit 1
fi

PYENV_PATH=""
if [[ -d .venv ]]; then
  PYENV_PATH=".venv"
elif [[ -d py_env ]]; then
  PYENV_PATH="py_env"
fi

echo "✅ Found Python virtual environment: $PYENV_PATH"

source "$PYENV_PATH/bin/activate"

# Check pip packages
echo "📦 Checking Python dependencies..."
missing_pkgs=0
for pkg in Flask pytest tiktoken; do
  if ! pip show "$pkg" > /dev/null 2>&1; then
    echo "❌ Missing Python package: $pkg"
    missing_pkgs=1
  else
    echo "✅ Found package: $pkg"
  fi
done

if [[ $missing_pkgs -ne 0 ]]; then
  echo "❌ Some Python packages are missing."
  exit 1
fi

# Check Node.js
echo "🟢 Checking Node.js..."
if ! command -v node > /dev/null 2>&1; then
  echo "❌ Node.js is not installed"
  exit 1
fi
echo "✅ Node.js version: $(node -v)"

# Check Ollama
echo "🦙 Checking Ollama installation..."
if ! command -v ollama > /dev/null 2>&1; then
  echo "❌ Ollama is not installed"
  exit 1
fi

echo "✅ Ollama installed: $(ollama --version)"

echo "📥 Checking for model llama3.2..."
if ! ollama list | grep -q "llama3.2"; then
  echo "❌ Model llama3.2 not found"
  exit 1
fi
echo "✅ Model llama3.2 is present"

# Check Docker
echo "🐳 Checking Docker access..."
if ! docker info > /dev/null 2>&1; then
  echo "❌ Docker is not running or not accessible"
  exit 1
fi
echo "✅ Docker is running"

# Check GitHub CLI
echo "🔧 Checking GitHub CLI..."
if ! command -v gh > /dev/null 2>&1; then
  echo "❌ GitHub CLI is not installed"
  exit 1
fi
echo "✅ GitHub CLI version: $(gh --version | head -n 1)"

echo "🎉 Environment validation successful!"
