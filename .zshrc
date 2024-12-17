# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
PS1="%F{red}λ%f "
alias rm='rm -i'
alias mv="mv -i"
alias cp="cp -i"
# End of lines added by compinstall
export PATH=$PATH:$HOME/bin
eval $(keychain --eval --quiet  id_rsa ~/.ssh/id_rsa)
alias compile='cc -Wall -Wextra -Werror'

tmux_all() {
    for window in $(tmux list-windows -F "#{window_index}"); do
        tmux send-keys -t $window "$*" Enter
    done
}
alias grep='grep --color=auto'
export PSQL_EDITOR="/bin/nvim"
alias config="/usr/bin/git --git-dir=$HOME.cfg/ --work-tree=$HOME"
