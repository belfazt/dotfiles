# dotfiles

## Previous Requirements
- [git](https://git-scm.com/)
- [asdf-vm](https://asdf-vm.com/)
- [docker](https://docs.docker.com/engine/install/)
- [zsh](https://www.zsh.org/)
- [oh-my-zsh](https://ohmyz.sh/)
- [zplug](https://github.com/zplug/zplug)

```sh
git clone https://github.com/belfazt/dotfiles ~/.dotfiles
echo 'export DOTFILES="$HOME/.dotfiles"' >> ~/.zshrc
echo 'source "$DOTFILES/.zshenv"' >> ~/.zshrc
git config --global core.excludesfile $DOTFILES/.gitignore_global

# forget about HTTPS whenever talking with github through git
git config --global url.ssh://git@github.com:.insteadOf https://github.com/
```
