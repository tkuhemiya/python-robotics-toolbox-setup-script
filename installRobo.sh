
python3 -m venv ./pyenv;
source ./pyenv/bin/activate;

pip install numpy
pip install scipy
pip install matplotlib
pip install spatialmath-python
pip install spatialgeometry
pip install roboticstoolbox-python
clear

# remove unused depreciated import
PYENV=$(python3 -c "import sys; print(f'python{sys.version_info.major}.{sys.version_info.minor}')")
sed -i '' '5d' "./pyenv/lib/$PYENV/site-packages/roboticstoolbox/mobile/DistanceTransformPlanner.py"

. ./pyenv/bin/activate

echo "Running Test File"

python ./test.py
