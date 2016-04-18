FROM ubuntu:14.04
RUN URL=http://get.fedena.co
RUN wget $URL/fedena.sh -O installer.sh
RUN sudo chmod +x installer.sh && sudo ./installer.sh
