## ZSH
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

plugins=(git git-auto-fetch pip pipenv npm nvm)
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# source
source $ZSH/oh-my-zsh.sh
source $HOME/.bash_profile

## Aliases

# Desktop
alias showFiles="defaults write com.apple.finder AppleShowAllFiles YES; killall Finder"
alias hideFiles="defaults write com.apple.finder AppleShowAllFiles NO; killall Finder"
alias showDesktop="defaults write com.apple.finder CreateDesktop true; killall Finder"
alias hideDesktop="defaults write com.apple.finder CreateDesktop false; killall Finder"

# Work
alias idweb="kdestroy --all; kinit --keychain misolori@REDMOND.CORP.MICROSOFT.COM; open https://idweb -a Safari.app"
alias vsc="cd ~/Projects/vscode/"
alias code-empty="rm -fr ~/code_profiles/empty/ && mkdir -p ~/code_profiles/empty/data/User && c --user-data-dir ~/code_profiles/empty/data/User --extensions-dir ~/code_profiles/empty/extensions"

# Reset
alias clear-font-cache="sudo atsutil databases -remove && atsutil server -shutdown && atsutil server -ping"
alias audio-reset="sudo killall coreaudiod"


# Git
alias gp="ggl"
alias git-clean="git clean -fdx && yarn && yarn watch"

## Functions

# simple server
function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  python3 -m http.server "$port"
}
alias server=server()

# terminal output
function term() {
  #!/bin/bash
  T='●●●'
  echo -e "\n                 40m     41m     42m     43m\
      44m     45m     46m     47m";
  for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
            '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
            '  36m' '1;36m' '  37m' '1;37m';
    do FG=${FGs// /}
    echo -en " $FGs \033[$FG  $T  "
    for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
      do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
    done
    echo;
  done
  echo
}