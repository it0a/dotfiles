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
export EDITOR='nvim'

alias c="clear"
alias tmux="tmux -2"
alias v=nvim
alias vi=nvim
alias vim=nvim
alias glog="git log --branches --remotes --tags --graph --oneline --decorate"
alias gpom='git push origin master'

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:/usr/bin/node"
export CHROME_BIN=/usr/bin/google-chrome-stable
export NODE_PATH=$NODE_PATH:/usr/lib/node_modules
export FZF_COMPLETION_TRIGGER='~~'
zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'

. ~/build/z/z.sh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#source ~/set-java-6.sh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/jgonzalez/.sdkman"
[[ -s "/home/jgonzalez/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jgonzalez/.sdkman/bin/sdkman-init.sh"


export SNAP_HOME="/home/jgonzalez/develop/streamlinx/snapcount"
export SNAPTOMCAT_HOME="/home/jgonzalez/tomcat18/tomcat18"
export NVM_DIR="$HOME/.nvm"
export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
