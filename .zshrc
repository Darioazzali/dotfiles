# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY 
setopt SHARE_HISTORY
bindkey -v
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
export PATH="$PATH:/home/dario/.local/bin:/home/dario/.cargo/bin"
export PIPX_HOME=$HOME/.local/pipx

fpath=($HOME/.zsh/completions $fpath)
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
# Direnv for automatically load environment variable in a folder
eval "$(direnv hook zsh)"


# pnpm
export PNPM_HOME="/home/dario/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
