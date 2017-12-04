execute 'pull docker image' do
  command "docker pull mongo:#{node[:mongos][:version]}"
end
