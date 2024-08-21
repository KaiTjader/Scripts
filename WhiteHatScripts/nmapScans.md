# nmap scanning

## Commands
- -sS
    - Secret, this is a half handshake. It does not send the ACK back to the server so no connection is made but port is detected
- -sT
    - Full TCP connection, this makes the connection sends back ACK then ends it since there are no commands happening
- -O
    - Detects os (not 100% reliable)
- -A
    - Detects os, version detection, script scanning, and trace route
- -D ipAddress
    - Also sends all the traffic via the given other host. This way the traffic is coming from multiple people
- --script
    - Runs scripts with nmap scan
    - e.g.: --script vuln
- -T0:T4
    - T0 is the slowest scan, because it doesn't look like someone is constantly pining your server
    - T4 is the fastest scan if you just want answers

- `sudo nmap -sT ipAddressHere` Searches for the top 1000 ports

## What to look for
- Ports: 443/8080/80 -> Web sever

## Extra notes:
- Goto [nmap scripting engine][0] to find scripts to pare with your nmap scan

[0]: https://nmap.org/book/nse.html