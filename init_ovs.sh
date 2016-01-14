#!/bin/bash
mkdir -p /var/run/openvswitch/
ovsdb-tool create /etc/openvswitch/conf.db /usr/share/openvswitch/vswitch.ovsschema
ovsdb-server --remote=punix:$DB_SOCK --remote=db:Open_vSwitch,Open_vSwitch,manager_options --pidfile --detach
modprobe openvswitch
ovs-vswitchd unix:$DB_SOCK --pidfile --log-file=/var/log/openvswitch/ovs-vswitchd.log
