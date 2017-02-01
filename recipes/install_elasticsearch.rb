include_recipe 'homebrew'
include_recipe 'java'

homebrew_package "elasticsearch@#{node['sprout']['elasticsearch']['version']['long']}"
