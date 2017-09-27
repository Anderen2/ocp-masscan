FROM centos:centos7

MAINTAINER Andreas Skoglund <andreas.skoglund@basefarm.com>

LABEL io.k8s.description="Fast internet port scanner" \
    io.k8s.display-name="Masscan" \
    io.openshift.expose-services="" \
    io.openshift.tags="security,scanner,network"

RUN yum install -y epel-release && \
    yum install -y --setopt=tsflags=nodocs masscan && \
    yum install -y iproute && \
    yum install -y tcpdump && \ 
    yum install -y nmap-ncat && \
    yum install -y socat && \
    yum clean all

CMD ["tail", "-f", "/dev/null"]
