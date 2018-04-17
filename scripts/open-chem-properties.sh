#!/bin/bash

################################### SETUP INSTRUCTIONS ######################################
#                                                                                           #
# 1. Make the script executable by running: chmod +x open-chem-properties.sh                #
# 2. Run the following command: ./open-chem-properties.sh                                   #
# 3. Launch jupyter notebook and change kernel to chemopy                                   #
#                                                                                           # 
# Documentation: https://www.researchgate.net/publication/235919352_UserGuide_for_chemopy   #
#                                                                                           #
#############################################################################################

conda create -n chemopy python=2.7.12 --yes
source activate chemopy
conda install -c openbabel openbabel --yes
conda install -c rdkit rdkit --yes
wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/pychem/chemopy-1.0.tar.gz
tar xzf chemopy-1.0.tar.gz
cd chemopy-1.0
python setup.py install
rm -rf chemopy*
conda install ipykernel --yes
python -m ipykernel install --name chemopy --user
