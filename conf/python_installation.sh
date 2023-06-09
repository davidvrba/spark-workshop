#!/bin/bash

student=$1

sed -i "/#\$nrconf{restart} = 'i';/s/.*/\$nrconf{restart} = 'a';/" /etc/needrestart/needrestart.conf

apt update
apt --assume-yes install tmux
apt --assume-yes install apt
apt --assume-yes install python3-pip
apt --assume-yes install openjdk-8-jdk
apt --assume-yes install scala
pip3 install py4j
pip3 install numpy
pip3 install pandas
pip3 install scipy
pip3 install matplotlib
pip3 install jupyter

wget /home/$student https://archive.apache.org/dist/spark/spark-3.3.2/spark-3.3.2-bin-hadoop3.tgz
tar xvf spark-3.3.2-bin-hadoop3.tgz

mkdir /home/ubuntu/.jupyter
cp /home/$student/spark-workshop/conf/jupyter_notebook_config.py /home/$student/.jupyter/

chown -R ubuntu:ubuntu /home/ubuntu/.jupyter
