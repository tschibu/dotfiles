# Getting Started With Dotfiles <3

```bash
~/.*
```

**Install zsh:**

```bash
brew install zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
```


**Link config files:**

```bash
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/oh-my-zsh/hslu.zsh  ~/.oh-my-zsh/custom/hslu.zsh
ln -s ~/dotfiles/oh-my-zsh/private.zsh  ~/.oh-my-zsh/custom/private.zsh
ln -s ~/dotfiles/oh-my-zsh/swissscom.zsh ~/.oh-my-zsh/custom/swisscom.zsh
```
