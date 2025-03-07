FROM amazonlinux:2
LABEL maintainer="Richard Lee"
LABEL version="0.1"
LABEL description="Custom Docker Image for AmazonLinux2 and Node.js"
RUN yum update -y
RUN yum -y install \
	initscripts \
	passwd \
	sudo \
	vim \
	wget \
	curl

RUN curl -sL https://rpm.nodesource.com/setup_12.x | sudo bash -
RUN yum -y install nodejs

RUN curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
RUN yum -y install yarn

CMD ["/usr/sbin/init"]

