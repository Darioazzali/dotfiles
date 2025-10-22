# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt APPEND_HISTORY        # Append to history file
setopt INC_APPEND_HISTORY    # Write commands immediately, not just on shell exit
setopt SHARE_HISTORY
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"
autoload -Uz compinit
compinit
# Enable git info in prompts
autoload -Uz vcs_info
precmd() { vcs_info }

# Configure git info format
zstyle ':vcs_info:git:*' formats ' (%b)'
zstyle ':vcs_info:*' enable git

# Set prompt with git branch
setopt PROMPT_SUBST
PROMPT='%f%F{red}λ%f '
# PROMPT='%f%F{red}λ%f%F{green}${vcs_info_msg_0_} %f> '
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
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
path+=("$HOME/.custom_man/")

# Created by `pipx` on 2024-12-19 10:43:01
export PATH="$PATH:/home/dario/.local/bin"
export PIPX_HOME=$HOME/.local/pipx

alias francinette=/home/dario/francinette/tester.sh
alias paco=/home/dario/francinette/tester.sh
fpath=($HOME/.zsh/completions $fpath)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

alias mstest="bash /home/dario/42_minishell_tester/tester.sh"

