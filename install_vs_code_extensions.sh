extensions="vscode/extensions_to_install"
echo "INFO: install vs-code extensions"
while IFS= read -r extension
do
  echo "INFO:   $extension"
  code --install-extension $extension
  if [ "${?}" != "0" ]
  then
    echo "ERROR: Could not install $extension."
  else
    echo "INFO:   Successfully installed $extension."
  fi
done < "$extensions"