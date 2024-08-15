clear
echo "
 __      __        __                                 ____  __        __
/  \    /  \ ____ |  |   ____  ____   _____   ____   |    |/ _|____  |__|
\   \/\/   // __ \|  | _/ ___\/  _ \ /     \_/ __ \  |      < \__  \ |  |
 \        /\  ___/|  |_\  \__(  <_> )  Y Y  \  ___/  |    |  \ / __ \|  |
  \__/\__/  \_____|____/\_____\____/|__|_|__/\_____  |____|___(______/__|"

if [ -f ~/.bash_exports ]; then
        . ~/.bash_exports
fi
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Main aliases
alias serverPreCheck="echo 'Make sure inspect is disabled and http is down'"
alias runServer="serverPreCheck; cd ~/3Generations; sudo /usr/bin/pm2 start server.js --env prod:usernameGoesHere,PasswordGoesHere --name 3Generations --wait-ready"
alias pullMainRepo="cd ~/3Generations; git pull https://github.com/KaiTjader/3Generations.git"
alias killServer="cd ~/3Generations; sudo /usr/bin/pm2 stop 3Generations"
pkill(){
        id=$(pidof $1)
        echo "killing ${id}"
        sudo pkill $1
}
alias refresh="source ~/.bashrc"
alias pm2Logs="sudo pm2 status; sudo pm2 logs --lines 1000"
alias pm2TestLogs="sudo pm2 flush; sudo pm2 logs"

# Adding colors to commands
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ls='ls --color=auto'

alias exit='echo "
  ________                   ____                    ____  __        __
 /  _____/  ____   ____   __| || |__ ___ __  ____   |    |/ _|____  |__|
/   \  ___ /  _ \ /  _ \ / __ || __ <   |  |/ __ \  |      < \__  \ |  |
\    \_\  (  <_> |  <_> ) /_/ || \_\ \___  \  ___/  |    |  \ / __ \|  |
 \________/\____/ \____/\_____||_____/_____|\_____  |____|___(____  \__|"; exit'

# Old commands to open port
alias runTempServer="cd ~/3Generations; nohup sudo node server prod:usernameGoesHere,PasswordGoesHere &"
alias runOneTimeServer="cd ~/3Generations; sudo node server prod:usernameGoesHere,PasswordGoesHere"