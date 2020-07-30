# Enable RDP on Hyper-V Server 2019

- Run above command on Hyper-V Server Powershell command line:
  - Get Network interface information
    - `Get-NetConnectionProfile`
  - Set Network interface Private, change number of InterfaceIndex
    - `Set-NetConnectionProfile -InterfaceIndex 6 -NetworkCategory Private`
    
- On SConfig.cmd go on option 7 and (E)nable the Remote Desktop for all connections

- Run again in Powershell command line:
  - Now set exception on firewall
    - `netsh.exe advfirewall firewall add rule name="ICMP ECHOREQUEST" dir=in protocol=icmpv4 action=allow`
    



### For block this rule and disable RDP, change the Remote Desktop option to (D)isable, and run the command line above on Powershell:
  - `netsh.exe advfirewall firewall add rule name="ICMP ECHOREQUEST" dir=in protocol=icmpv4 action=block`
