FROM ubuntu:14.04
RUN apt-get install wget -y
RUN wget http://get.fedena.co/fedena.sh -O installer.sh
RUN sudo chmod +x installer.sh && sudo ./installer.sh
