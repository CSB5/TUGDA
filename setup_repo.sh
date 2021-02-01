conda create --name TUGDA_rep python=3.8
source activate TUGDA_rep
pip install jupyter
pip install ipykernel
python -m ipykernel install --user --name TUGDA_rep --display-name "Python (TUGDA_rep)"
jupyter notebook