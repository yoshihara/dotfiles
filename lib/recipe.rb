include_recipe "recipe_helper"

node.reverse_merge!(
  user: ENV["USER"],
)

root_dir = File.expand_path("../..", __FILE__)
include_recipe File.join(root_dir, "roles/#{node[:platform]}/default")
