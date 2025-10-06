
# Link the launch agent to fix Electron resource hog bug
ln -sf ~/dotfiles/electron/environment.fix-electron-resource-hog-bug.plist ~/Library/LaunchAgents/environment.fix-electron-resource-hog-bug.plist

# Load the launch agent
launchctl load ~/Library/LaunchAgents/environment.fix-electron-resource-hog-bug.plist

# checks
launchctl list environment.fix-electron-resource-hog-bug
