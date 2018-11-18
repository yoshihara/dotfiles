package "git"

file File.join(ENV["HOME"], ".gitconfig") do
  root_dir = File.expand_path('../../..', __FILE__)
  content File.read(File.join(root_dir, "config", ".gitconfig"))
end
