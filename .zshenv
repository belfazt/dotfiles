source ~/.zplug/init.zsh

zplug "chrissicool/zsh-256color"
zplug "plugins/docker-compose", from:oh-my-zsh
zplug "plugins/bundler", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug 'dracula/zsh', as:theme
zplug "plugins/kubectl", from:oh-my-zsh
zplug "superbrothers/zsh-kubectl-prompt"
zplug "plugins/terraform", from:oh-my-zsh
zplug "plugins/minikube", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/copybuffer", from:oh-my-zsh
zplug "plugins/asdf", from:oh-my-zsh

function right_prompt() {
  local color="green"

  if [[ "$ZSH_KUBECTL_CONTEXT" =~ "prod" ]]; then
    color=red
  fi

  echo "%{$fg[$color]%}($ZSH_KUBECTL_CONTEXT)%{$reset_color%}"
}
RPROMPT='$(right_prompt)'


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

alias pacman='sudo pacman'

alias pvpn='sudo pvpn'

alias aws='docker run --rm -it -v ~/.aws:/root/.aws -v $(pwd):/aws amazon/aws-cli'

export PATH="$DOTFILES/git-custom/:$PATH"

export EDITOR=vim

alias dcr="docker-compose restart"
alias dce="docker-compose exec"
alias dcb="docker-compose build"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dcs="docker-compose stop"
