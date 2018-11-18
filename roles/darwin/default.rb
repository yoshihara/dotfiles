root_dir = File.expand_path("../../..", __FILE__)

file File.join(ENV["HOME"], ".Xresources") do
  content File.read(File.join(root_dir, "config", ".Xresources"))
end

file File.join(ENV["HOME"], ".ssh", "config") do
  content File.read(File.join(root_dir, "config", ".ssh", "config"))
end

execute "/usr/bin/ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'" do
  not_if "which brew"
end

execute "brew doctor" do
  only_if "which brew"
end

include_cookbook "packages"
include_cookbook "cask"

include_cookbook "karabiner"
include_cookbook "git"
include_cookbook "zsh"
include_cookbook "emacs"

include_cookbook "ricty"
