brctl addbr br0
ifconfig br0 10.1.1.1 netmask 255.255.255.0
ifconfig br0 up
dhcpd
