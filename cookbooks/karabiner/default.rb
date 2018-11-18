file File.join(ENV["HOME"], ".config", "karabiner", "karabiner.json") do
  root_dir = File.expand_path('../../..', __FILE__)
  content File.read(File.join(root_dir, "config", "karabiner.json"))
end
