include_recipe 'sprout-elasticsearch::install_elasticsearch'

launch_agents_path = File.expand_path(File.join(node.default['sprout']['home'], 'Library/LaunchAgents'))
directory launch_agents_path do
  action :create
  recursive true
  owner node['sprout']['user']
end

plist_filename = node['sprout']['elasticsearch']['plist_filename']
homebrew_root = '/usr/local'
elasticsearch_install_path = File.join(homebrew_root, 'opt', "elasticsearch#{node['sprout']['elasticsearch']['version']['short']}")
source_plist_filename = File.join(elasticsearch_install_path, plist_filename)
launch_agent_plist_filename = File.join(launch_agents_path, plist_filename)

link launch_agent_plist_filename do
  to source_plist_filename
end

execute 'start the daemon' do
  command "launchctl load -w #{launch_agent_plist_filename}"
  user node['sprout']['user']
end