#!/bin/zsh
export HISTSIZE=99999
export SAVEHIST=99999
export HISTFILE=~/.zsh_history
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="lambda"
# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git)
source "$ZSH/oh-my-zsh.sh"
export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
export GRAILS_OPTS="-server -noverify -XX:PermSize=768m -XX:MaxPermSize=768m -Xmx2048M -Xms2048m -XX:+UseParallelGC -Djava.net.preferIPv4Stack=true -Dsun.reflect.inflationThreshold=100000"
export EDITOR='vim'
# export MANPATH="/usr/local/man:$MANPATH"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias fuck='eval $(thefuck $(fc -ln -1))'
alias FUCK='fuck'
alias nx="sudo netctl stop-all"
alias ns="sudo netctl start"
alias n="nx && ns"
alias c="clear"
alias v="vim"
alias sc="scrot"
alias S2FFI="~/develop/streamlinx/SmartsToo2/grails-app/conf/db-scripts/S1Import"
alias tmux="tmux -2"
export GROOVY_HOME=$HOME/.gvm/groovy/current
export GRAILS_HOME=$HOME/.gvm/grails/current
export GRADLE_HOME=$HOME/.gvm/gradle/current
alias glog="git log --branches --remotes --tags --graph --oneline --decorate"
alias bcmt="~/develop/streamlinx/bcmt/bin/bcmt"
alias grails="$GRAILS_HOME/bin/grails"
alias gradle="$GRADLE_HOME/bin/gradle"
#alias decurse="curl -F \"dump=<-\" http://www.decur.se/d"
alias egc="vim $HOME/.grails/SmartsToo-config.groovy"
alias s2d="cd $HOME/develop/streamlinx && vim"
alias rs2m="$HOME/usefulscripts/rs2m.sh"
alias s2ut="gradle --project-dir $HOME/develop/spock/speckr -I $HOME/develop/spock/speckr/init.gradle test"
alias vi=vim
alias bower='noglob bower'
alias ppjson='python -m json.tool'
alias s2sc='~/develop/streamlinx/smartstoo/web-app/smartsToo/scaffold/scaffold'
alias gpom='git push origin master'
alias rxs2='echo "Pulling Blackcomb..." && cd ~/develop/streamlinx/blackcomb && git up && echo "Pulling SmartsToo..." && cd ~/develop/streamlinx/smartstoo && git up && cd ~/develop/streamlinx'
alias rxsc='echo "Pulling Snapcount..." && cd ~/develop/streamlinx/snapcount && git up'
alias txs2='echo "Pushing Blackcomb..." && cd ~/develop/streamlinx/blackcomb && git push origin dev && echo "Pushing SmartsToo..." && cd ~/develop/streamlinx/smartstoo && git push origin dev && cd ~/develop/streamlinx'
alias cds2='cd ~/develop/streamlinx/smartstoo'
alias cdbc='cd ~/develop/streamlinx/blackcomb'
alias cdsc='cd ~/develop/streamlinx/snapcount'
alias cdci='cd ~/develop/jenkins'
alias cdsl='cd ~/develop/streamlinx'
alias ezsh='vim ~/.zshrc'
alias gohome='rxs2 && rxsc'
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/home/jgonzalez/develop/streamlinx/SmartsToo2/src/groovy/postCode.groovy" # Add RVM to PATH for scripting
export PATH="$PATH:~/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:~/.bcmt/bin"
export PATH="$PATH:$GROOVY_HOME/bin"
export GOPATH="$HOME/develop/go"
export GOBIN="$HOME/develop/go/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:~/.cabal/bin"
export PATH="$PATH:$HOME/bin"
export S2W="$HOME/develop/streamlinx/SmartsToo2/web-app/smartsToo/"
export PATH="$PATH:/usr/bin/node"
export DATABASE_URL="postgres://it0a@127.0.0.1:5432/last98?sslmode=disable"
export CHROME_BIN=/usr/bin/google-chrome-stable
export NODE_PATH=$NODE_PATH:/usr/lib/node_modules
export FZF_COMPLETION_TRIGGER='~~'
zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

. ~/build/z/z.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "$HOME/.gvm/bin/gvm-init.sh" ]] && source "$HOME/.gvm/bin/gvm-init.sh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

