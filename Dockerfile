FROM centos:7.2.1511
MAINTAINER Frank Zhao <frank@frankzhao.net>

ENV DB_SOCK=/var/run/openvswitch/db.sock

# Install mininet
COPY mininet /root/mininet
RUN cd /root/mininet && util/install.sh
RUN yum clean all

# Set up OpenvSwitch
COPY init_ovs.sh /bin/init_ovs
RUN chmod +x /bin/init_ovs

ENTRYPOINT ["init_ovs"]