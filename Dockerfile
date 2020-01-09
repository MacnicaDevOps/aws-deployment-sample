From centos:7
RUN yum update -y && yum install -y https://centos7.iuscommunity.org/ius-release.rpm
RUN yum -y install docker python36u python36u-devel python36u-libs
RUN yum install -y python36u-pip && python3 -m ensurepip
RUN yum install -y wget unzip
RUN wget -qO- https://get.docker.com/ | sh
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
RUN export PATH=/root/.local/bin:$PATH
