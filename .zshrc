export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="flazz"
# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
export GRAILS_OPTS="-XX:MaxPermSize=768m -XX:PermSize=768m -Xms768m -Xmx2048m -XX:-UseGCOverheadLimit"
export EDITOR='vim'
# export MANPATH="/usr/local/man:$MANPATH"
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
alias grails="$GRAILS_HOME/bin/grails"
alias gradle="$GRADLE_HOME/bin/gradle"
alias decurse="curl -F \"dump=<-\" http://www.decur.se/d"
alias egc="vim $HOME/.grails/SmartsToo-config.groovy"
alias s2d="cd $HOME/develop/streamlinx && vim"
alias rs2m="$HOME/usefulscripts/rs2m.sh"
alias s2ut="gradle --project-dir $HOME/develop/TestRunner -I $HOME/develop/TestRunner/init.gradle test"
alias vi=vim
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.bcmt/bin"
#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/it0a/.gvm/bin/gvm-init.sh" ]] && source "/home/it0a/.gvm/bin/gvm-init.sh"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
