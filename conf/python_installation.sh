#!/bin/bash

student=$1

apt-get  update
NEEDRESTART_MODE=a apt --assume-yes install python3-pip
apt-get --assume-yes install openjdk-8-jdk
apt-get --assume-yes install scala
pip3 install py4j
pip3 install numpy
pip3 install pandas
pip3 install scipy
pip3 install matplotlib
pip3 install jupyter

wget /home/$student https://archive.apache.org/dist/spark/spark-3.3.2/spark-3.3.2-bin-hadoop3.tgz
tar xvf spark-3.3.2-bin-hadoop3.tgz

cp /home/$student/spark-workshop/conf/jupyter_notebook_config.py /home/$student/.jupyter/
