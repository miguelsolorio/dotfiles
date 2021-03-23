export _Z_OWNER="misolori"
export ZSH=$HOME/.oh-my-zsh
# source $ZSH/plugins/z/z.plugin.zsh

ZSH_THEME="robbyrussell"

plugins=(git git-auto-fetch zsh-autosuggestions pip pipenv npm nvm)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/.bash_profile

autoload -U compinit
compinit -i