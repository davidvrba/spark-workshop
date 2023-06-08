#!/bin/bash

student=$1

apt-get  update
apt install python3.7
apt --assume-yes install python3-pip
apt-get --assume-yes install openjdk-8-jdk
echo 'export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64' >> ~/.bashrc
apt-get --assume-yes install scala
pip3 install py4j
pip3 install numpy
pip3 install pandas
pip3 install 'pyarrow==1.0.0'
pip3 install scipy
pip3 install matplotlib==3.0.0
pip3 install jupyter

wget /home/$student https://archive.apache.org/dist/spark/spark-3.3.2/spark-3.3.2-bin-hadoop3.tgz
tar xvf spark-3.3.2-bin-hadoop3.tgz

cp /home/$student/workshop-template/conf/hive-site.xml /home/$student/spark-3.3.2-bin-hadoop3/conf/
