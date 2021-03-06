#!/usr/bin/env bash

echo "Remove DHCP leases"
rm /var/lib/dhclient/*

echo "Clean udev rules"
rm /etc/udev/rules.d/70-persistent-net.rules
sed -i '/HWADDR/d' /etc/sysconfig/network-scripts/ifcfg-eth0

echo "Remove SSH host keys"
rm -f /etc/ssh/ssh_host*key*

echo "Enabling cloud-init"
chkconfig cloud-init on

unset HISTFILE
