
if command -v python3.11; then
    echo "Python 3.11 is available."
else
    echo "Python 3.11 is not installed."
    echo "Install Python 3.11"
    echo "Windows: winget install Python.Python.3.11"
    echo "macos: brew install python@3.11"
    echo "linux: sudo apt install -y python3.11 python3.11-venv python3.11-dev"
    return 1
fi


python3.11 -m venv ./pyenv;
source ./pyenv/bin/activate;

pip install numpy==1.26.4
pip install matplotlib==3.7.1
pip install roboticstoolbox-python
pip install --force-reinstall matplotlib==3.7.1
pip install machinevision-toolbox-python
pip install ipywidgets

. ./pyenv/bin/activate

echo "Running Test File"
python ./test.py

