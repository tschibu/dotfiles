# aliases

# personal alias
alias nas='ssh remo@ds218'

# git handler
alias lg=lazygit

# editor
alias v=nvim

# Update/upgrade Homebrew and their installed packages
alias brew-update='brew update; brew upgrade; brew upgrade --cask; brew cleanup'

# compare vscode extensions (installed vs downloaded)
function code-extensions-compare() {
    # List of all extensions
    extensions=`cat ~/dotfiles/vscode/extensions_to_install`

    # Get a list of all currently installed extensions.
    installed_extensions=$(code --list-extensions)

    # compare the extensions lists
    diff <(echo "$extensions") <(echo "$installed_extensions")

}
