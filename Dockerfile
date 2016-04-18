FROM ubuntu:14.04
RUN URL=http://get.fedena.co
RUN apt-get install wget -y
RUN wget $URL/fedena.sh -O installer.sh
RUN sudo chmod +x installer.sh && sudo ./installer.sh
