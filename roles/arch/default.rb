root_dir = File.expand_path("../../..", __FILE__)

file File.join(ENV["HOME"], ".ssh", "config") do
  content File.read(File.join(root_dir, "config", ".ssh", "config"))
end

# TODO: include_cookbook "yay"

include_cookbook "git"
include_cookbook "zsh"
include_cookbook "emacs"
include_cookbook "ricty"
