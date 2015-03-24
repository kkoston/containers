#!/bin/bash

iptables -F
iptables -t nat -F 
iptables -t mangle -F

sysctl net.ipv4.ip_forward=0
sysctl net.ipv4.ip_forward=1

/sbin/iptables -t nat -A POSTROUTING -o eth0 -s 10.1.1.0/24 -j MASQUERADE
/sbin/iptables -A FORWARD -i eth0 -o br0 -j ACCEPT
/sbin/iptables -A FORWARD -i br0 -o eth0 -j ACCEPT

