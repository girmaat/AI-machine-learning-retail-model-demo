#!/bin/bash

# Exit if any command fails
set -e

echo "🔧 Activating virtual environment..."
source ~/ml-retail-project/environment/venv/bin/activate

echo "📦 Downgrading packaging to version 24.0 to avoid Streamlit conflicts..."
pip install packaging==24.0

echo "🔄 Reinstalling Streamlit to ensure compatibility..."
pip install --force-reinstall streamlit

echo "🔁 Installing or repairing ipykernel..."
pip install --force-reinstall ipykernel

echo "🔌 Registering Jupyter kernel for this virtual environment..."
python -m ipykernel install --user --name=ml-retail-venv --display-name "Python (ml-retail)"

echo "✅ All done!"
echo "➡️ Now open VS Code, select the 'Python (ml-retail)' kernel in your notebook, and you're good to go!"
