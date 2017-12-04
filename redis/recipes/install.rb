execute 'pull docker image' do
  command "docker pull redis:#{node[:redis][:version]}"
end
