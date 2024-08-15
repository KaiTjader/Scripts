#Firewall
Set-NetFirewallProfile -Profile private -enabled true
Set-NetFirewallProfile -Profile public -enabled true
Set-NetFirewallProfile -Profile domain -enabled true

#Disable guest account
get-LocalUser -name guest | Disable-LocalUser

#Setting password policy
net accounts /minpwlen:15
net accounts /minpwage:30
net accounts /maxpwage:60
net accounts /lockoutthreshold:25
net accounts /lockoutduration:30

#disabling remote desktop sharing
Set-ItemProperty -path 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\' -name "fDenyTSConnections" -value 1

#Virus & threat protection settings

#makes sure that real time moniroting is on
Set-MpPreference -DisableRealtimeMonitoring $false

#checks new virus updates
Update-MpSignature

#turns off
#Set-executionpolicy Restricted