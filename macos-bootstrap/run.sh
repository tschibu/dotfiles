#!/usr/bin/env bash

set -e

# this runs the no-op command 'true' as super user in order to prompt for the password in the beginning
sudo true


function brew-install {
    local FORMULA=$1
    local INSTALL_GUARD_PATH=$2
    local NAME=$3

    if [ "$2" == "" ]
    then
        INSTALL_GUARD_PATH=/opt/homebrew/bin/${FORMULA}
    fi

    if [ "$3" == "" ]
    then
        NAME=${FORMULA}
    fi

    echo "📦 Installing ${NAME} (brew) ..."

    if [ -f "${INSTALL_GUARD_PATH}" ]
    then
        echo "  🆗 ${NAME} already installed"
        return
    fi

    # main installation
    brew install --quiet "${FORMULA}"

    echo "  ✅ ${NAME} installed"
}

function brew-cask-install {
    local FORMULA=$1
    local NAME=$1

    echo "📦 Installing ${NAME} (brew via cask) ..."

    if brew list ${NAME} &>/dev/null; then
        echo " 🆗 ${NAME} is already installed"
        return
    fi

    # main installation
    brew install --cask --quiet "${FORMULA}"

    echo "  ✅ ${NAME} installed"
}

echo "📦 Installing Homebrew ..."
if [ ! -f "/opt/homebrew/bin/brew" ]
then
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "  ✅ Homebrew installed"
else
    echo "  🆗 Homebrew already installed"
fi

# disable a few Homebrew features as they don't make sense during onboarding
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_INSTALL_CLEANUP=1

#
# brew-install <formula> <install_guard_path> <name>
#

# tools (cli tools)
brew-install ansible
brew-install argocd
brew-install cloudfoundry/tap/cf-cli@8
brew-install derailed/k9s/k9s
brew-install dos2unix
brew-install ffmpeg
brew-install gh
brew-install git
brew-install glab
brew-install helm
brew-install htop
brew-install jenv
brew-install jq
brew-install kubeseal
brew-install kustomize
brew-install lua
# brew-install minikube
brew-install nativefier
brew-install neovim
brew-install nmap
brew-install node
brew-install openshift-cli
brew-install pinentry-mac
brew-install pre-commit
brew-install skopeo
brew-install telnet
brew-install tldr
brew-install tmux
brew-install tree
brew-install trivy
brew-install vim
brew-install watch
brew-install wget
brew-install yamllint
brew-install yq
brew-install zsh

# programming languages and frameworks
brew-install go

#
# brew-cask-install <formula>
#
brew-cask-install apache-directory-studio
brew-cask-install appcleaner
brew-cask-install arc
brew-cask-install boop
brew-cask-install chromedriver
brew-cask-install chromium
# brew-cask-install coconutbattery
brew-cask-install daisydisk
brew-cask-install discord
brew-cask-install firefox
# brew-cask-install brave-browser # optionally
brew-cask-install google-earth-pro
brew-cask-install iterm2
brew-cask-install itsycal
brew-cask-install jabra-direct
brew-cask-install karabiner-elements
brew-cask-install keepassxc
brew-cask-install keystore-explorer
brew-cask-install windows-app
brew-cask-install miro
brew-cask-install openvpn-connect
brew-cask-install pdf-expert
brew-cask-install podman-desktop
brew-cask-install postman
brew-cask-install rar
brew-cask-install raycast
brew-cask-install signal
brew-cask-install slack
brew-cask-install snagit
brew-cask-install sonos
brew-cask-install spotify
brew-cask-install teamviewer
brew-cask-install telegram
brew-cask-install the-unarchiver
brew-cask-install threema
brew-cask-install tuxera-ntfs
brew-cask-install visual-studio-code
brew-cask-install vlc
brew-cask-install webex
brew-cask-install wireshark
brew-cask-install whatsapp
brew-cask-install zoom

# kpt
brew tap GoogleContainerTools/kpt https://github.com/GoogleContainerTools/kpt.git
brew-install kpt

# nerd font
brew install --cask font-hack-nerd-font

# 🦙 Alpaca Proxy
brew tap samuong/alpaca
brew install samuong/alpaca/alpaca

# add lazygit
brew install jesseduffield/lazygit/lazygit
brew install lazygit

# add terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
