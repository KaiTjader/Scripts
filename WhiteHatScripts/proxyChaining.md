# Proxy Chaining

## How it works
- A proxy server is a server that your network request go threw before hitting its target
- This is useful because your target doesn't see your commands coming from you but the proxy server
- However the logs of the proxy server can be read therefor your identity can be found
- If you use proxy chaining, multiple proxy servers, then it becomes really hard to track

#### Better ways to hide your identity
- You can also use VPNs and they do the same thing again though there logs can be read. So you can pair all of these together to become really hidden
- Mullvad VPN is a swedish vpn that keeps no logs at all. This is the vpn that will keep you hidden!

## How to do it
- Run `locate proxychains`
- Find the file that looks like `/etc/proxychains.conf`
    - Does not have to be that exactly
- vim that file `vim /etc/proxychains.conf`
    - Dynamic chain: Makes on proxy server go to the next and so on
    - Strict chain: If one of the proxy servers fail, the chain fails with it
    - Random chain: Your request hit random proxy servers so the attacked sees your stuff coming from multiple ip addresses
- comment out remote_dns_subnet ###, and put `proxy_dns`
- Under `[ProxyList]` comment out all listed ip addresses
- Type `socks4 ip_address port` with the real address and port 
- After entering all proxy's exit
- Now run proxychains in front of a command
    - e.g.: `proxychains firefox google.com`
        - verify via typing what my ip address

### More to learn
- How do you set up the server to allow command to be let threw its port
- Look up `free proxys server list` to find proxy servers to use
    - `https://spys.one/en/`
- Difference between socks4, socks5, and http