# Getting Started With Dotfiles <3

```bash
~/.*
```

**Install brew:**

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
* The script explains what it will do and then pauses before it does it. --> Read it!

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
rm -f ~/.zshrc && ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/oh-my-zsh/private.zsh  ~/.oh-my-zsh/custom/private.zsh
ln -s ~/dotfiles/pip/pip.conf ~/.pip/pip.conf
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/karabiner/assets/complex_modifications ~/.config/karabiner/assets/complex_modifications
```

**Adding global .gitignore file**
```bash
ln -s ~/dotfiles/git/gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# check
git config --get core.excludesfile
```

# Visual Studio Code - Install extensions

* Check if `Visual Studio Code` is installed as `cli` is installed with `code -v`.

```bash
cd ~/dotfiles/ && ./install_vs_code_extensions.sh
```