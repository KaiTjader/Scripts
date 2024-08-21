# Different ways to get passwords

## Hack into server
- Run `nmap -sS urlGoesHere` to get information about the server (use proxy chaining w/vpn to be hidden)
    - This should give you the ip address and hopefully users to login with too
- Run `sudo hashcat -a typeOfAttackNum -m typeOfHashNum -0 storedPasswordsFile.txt "hashOfPw" mostCommonPw.txt` to hack the password
    - Windows = NTLM = 1000
    - ssh server = SHA-512 = 1800
    - Run `man hashcat` to find what you need

1. brute force
    - starting with common passwords
    - then dictionary attack
2. Send phishing email with attachment with malware (like a key logger)
3. Man-in-the-middle attack
    - wifi reading