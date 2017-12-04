execute 'start daemon container' do
  command "docker run -d -l #{node[:mongos][:container_label]} -p #{node[:mongos][:container_port]}:#{node[:mongos][:host_port]} -v #{node[:mongos][:host_data_dir]}:#{node[:mongos][:container_data_dir]} -v #{node[:mongos][:host_data_db_dir]}:#{node[:mongos][:container_data_db_dir]} mongo:#{node[:mongos][:version]}"
end
