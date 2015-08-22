include_recipe 'homebrew'
include_recipe 'java'

homebrew_tap 'homebrew/versions'
homebrew_package "elasticsearch#{node['sprout']['elasticsearch']['version']['short']}"
