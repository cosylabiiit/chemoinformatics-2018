#!/usr/bin/env bash

conda create -n chemopy python=2.7.12 
source activate chemopy
conda install -c openbabel openbabel
conda install -c rdkit rdkit
wget chemopy-1.0.tar.gz
tar xzf chemopy-1.0.tar.gz
cd chemopy-1.0
python setup.py install
