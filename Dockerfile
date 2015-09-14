FROM centos
MAINTAINER Sthapaun Patinthu <contact@sthapaun.com>


# Install emacs
RUN yum update; yum -y install emacs; yum -y install wget; yum -y install zip; yum -y install unzip; cd ~/; mkdir Desktop; cd Desktop; wget https://storage.googleapis.com/ddd-cdn/dev/editors/emacs.tar.gz; tar -zxvf emacs.tar.gz; cd emacs; cp emacs ~/.emacs; cp -r emacs.d ~/.emacs.d; rm ~/Desktop/emacs.tar.gz; rm -r ~/Desktop/emacs; echo '\n\nexport TERM="xterm"' ~/.bashrc;

# Download MongoDB
RUN cd ~/Desktop; wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-rhel70-3.0.6.tgz; tar -zxvf mongodb-linux-x86_64-rhel70-3.0.6.tgz; cd mongodb-linux-x86_64-rhel70-3.0.6; cp -r bin/* /bin/;