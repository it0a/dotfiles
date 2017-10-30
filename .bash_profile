#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/home/it0a/.gvm/bin/gvm-init.sh" ]] && source "/home/it0a/.gvm/bin/gvm-init.sh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/jgonzalez/.sdkman"
[[ -s "/home/jgonzalez/.sdkman/bin/sdkman-init.sh" ]] && source "/home/jgonzalez/.sdkman/bin/sdkman-init.sh"
