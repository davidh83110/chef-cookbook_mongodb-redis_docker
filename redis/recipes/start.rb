execute 'start daemon container' do
  command "docker run -l #{node[:redis][:container_label]} -d -p #{node[:redis][:container_port]}:#{node[:redis][:host_port]} -v #{node[:redis][:host_data_dir]}:#{node[:redis][:container_data_dir]} redis:#{node[:redis][:version]}"
end
