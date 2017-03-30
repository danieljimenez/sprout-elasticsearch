include_recipe 'homebrew'
include_recipe 'java'

cookbook_file "elasticsearch@#{node['sprout']['elasticsearch']['version']['long']}.rb" do
  source 'elasticsearch@1.7.rb'
  path "#{Chef::Config['file_cache_path']}/elasticsearch@1.7.rb"
end

homebrew_package "#{Chef::Config['file_cache_path']}/elasticsearch@#{node['sprout']['elasticsearch']['version']['long']}.rb"