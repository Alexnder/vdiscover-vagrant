#!/usr/bin/env bash

apt-get update
apt-get install -y gcc make build-essential linux-headers-$(uname -r) mercurial git python-pip python-numpy python-scipy python-matplotlib python-pandas python-sympy python-nose

hg clone https://bitbucket.org/haypo/python-ptrace
cd python-ptrace && python setup.py install && cd ..

pip install scipy
pip install -U scikit-learn

git clone https://github.com/CIFASIS/VDiscover.git
cd VDiscover && python setup.py install && cd ..