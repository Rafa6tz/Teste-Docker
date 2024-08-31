FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y sudo

RUN useradd -m -s /bin/bash teste && \
    echo "teste:password" | chpasswd

RUN usermod -aG sudo teste

RUN mkdir -p /home/teste && \
    chown teste:teste /home/teste

USER teste
WORKDIR /home/teste

CMD ["/bin/bash"]
