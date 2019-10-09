source ~/.zplug/init.zsh

zplug "chrissicool/zsh-256color"
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/bundler", from:oh-my-zsh
zplug "plugins/pyenv", from:oh-my-zsh
zplug "plugins/rbenv", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug 'dracula/zsh', as:theme
zplug "lukechilds/zsh-nvm"
zplug "plugins/nvm", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias pacman='sudo pacman'

alias pvpn='sudo pvpn'


export PATH="$DOTFILES/git-custom/:$PATH"

export EDITOR=vim

