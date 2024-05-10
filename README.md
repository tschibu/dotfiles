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
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# RESH ❯❯ Contextual shell history for zsh and bash
curl -fsSL https://raw.githubusercontent.com/curusarn/resh/master/scripts/rawinstall.sh | bash
```


**Link config files:**

```bash
rm -f ~/.zshrc && ln -sf ~/dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/dotfiles/oh-my-zsh/private.zsh ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/private.zsh
ln -sf ~/dotfiles/pip/pip.conf ~/.pip/pip.conf
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/karabiner/assets/complex_modifications ~/.config/karabiner/assets/complex_modifications
mkdir -p $HOME/.config
ln -sf ~/dotfiles/neovim $HOME/.config/nvim
ln -sf ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -sf ~/dotfiles/vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json"
```

**Adding global .gitignore file**
```bash
ln -s ~/dotfiles/git/gitignore_global ~/.gitignore_global
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

# check
git config --get core.excludesfile
#   Output: git config --get core.excludesfile
git config --get user.name
#   Output: tschibu
git config --get user.email
#   Output: tschibu@gmail.com
```

# Visual Studio Code - Install extensions

* Check if `Visual Studio Code` is installed as `cli` is installed with `code -v`.

```bash
cd ~/dotfiles/ && ./install_vs_code_extensions.sh
```

# Text to clipboard handling

Copy password direct to clipboard
```bash
cat ~/.mytextfile | tr -d '\n' | pbcopy
```

# Karabiner-Elements Settings

System Preferences > Security & Privacy > Accessibility

Add the following apps/binaries to the list and toggel it on:
* Script Editor
* karabiner_console_user_server
* osascript (Hint `which osascript` -> /usr/bin/osascript)
