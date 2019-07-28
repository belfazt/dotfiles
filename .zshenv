source ~/.zplug/init.zsh

# Load theme file
zplug 'dracula/zsh', as:theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias pacman='sudo pacman'

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/rbenv", from:oh-my-zsh
zplug "plugins/pyenv", from:oh-my-zsh
zplug "plugins/bundler", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh

export PATH="$DOTFILES/git-custom/:$PATH"
