# Get Network interface information
Get NetConnectionProfile

# Set Network interface Private, change number of InterfaceIndex
Get NetConnectionProfile -InterfaceIndex 6 -NetworkCategory Private

##

# Set allow on firewall
netsh.exe advfirewall firewall add rule name="ICMP ECHOREQUEST" dir=in protocol=icmpv4 action=allow

# For block this rule
netsh.exe advfirewall firewall add rule name="ICMP ECHOREQUEST" dir=in protocol=icmpv4 action=block
