#!/bin/zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="flazz"
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

alias S2FFI="~/develop/streamlinx/SmartsToo2/grails-app/conf/db-scripts/S1Import"
alias tmux="tmux -2"
export GRAILS_HOME=$HOME/.gvm/grails/current
export GRADLE_HOME=$HOME/.gvm/gradle/current
alias bcmt="~/develop/streamlinx/bcmt/bin/bcmt"
alias grails="$GRAILS_HOME/bin/grails"
alias gradle="$GRADLE_HOME/bin/gradle"
#alias decurse="curl -F \"dump=<-\" http://www.decur.se/d"
alias egc="vim ~/.grails/SmartsToo-config.groovy"
alias s2d="cd ~/develop/streamlinx && vim"
alias rs2m="~/usefulscripts/rs2m.sh"
alias s2ut="gradle --project-dir ~/develop/TestRunner -I ~/develop/TestRunner/init.gradle test"
alias vi=vim
alias bower='noglob bower'
alias S2I="~/develop/streamlinx/SmartsToo2/grails-app/conf/db-scripts/S1Import"
export PATH="$PATH:/home/jgonzalez/develop/streamlinx/SmartsToo2/src/groovy/postCode.groovy" # Add RVM to PATH for scripting
export PATH="$PATH:~/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:~/.bcmt/bin"
export GOPATH="$HOME/develop/go"
export GOBIN="$HOME/develop/go/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:~/.cabal/bin"
export S2W="$HOME/develop/streamlinx/SmartsToo2/web-app/smartsToo/"
export NODE_PATH="/home/jgonzalez/npm/lib/node_modules:$NODE_PATH"
export PATH="$PATH:/usr/bin/node"
export DATABASE_URL="postgres://it0a@127.0.0.1:5432/last98?sslmode=disable"
export CHROME_BIN=/usr/bin/google-chrome-stable
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "$HOME/.gvm/bin/gvm-init.sh" ]] && source "$HOME/.gvm/bin/gvm-init.sh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
