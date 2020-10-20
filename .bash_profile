# I want cool vim mode first
set -o vi

# Make my terminal look a little better
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]Raughly:\[\033[34;1m\]\W\[\033[m\]\$ "
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]Raughly:\[\033[34;1m\]\W\[\033[32m\](\$(git branch 2>/dev/null | grep '^*' | colrm 1 2))\n\[\033[36m\]\$\[\033[m\] "
export CLICOLOR=1
# export LSCOLORS=ExFxBxDxCxegedabagacad
export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

# Brew told me to add this after install bash-completion
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"

# Source the bash-completion file
# first runL
# brew install bash-completion or bash-completion@2 for bash > v4
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion


# Add my own bin directory
PATH=$PATH:/usr/local/texlive/2019basic/bin/x86_64-darwin:~/bin

# Set ant directory
export ANT_HOME="/usr/local"

# aliases
alias ll='ls -la'
alias gid='./gw installDependencies'
alias glo='git log --oneline'

# Start tmux
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t Raughly || tmux new -s Raughly
fi
