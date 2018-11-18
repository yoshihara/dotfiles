execute "brew cask upgrade"

execute "brew cask install google-chrome google-japanese-ime emacs" do
  not_if "test -e /usr/local/bin/emacs" # TODO: split google-chrome & google-japanese-ime
end
