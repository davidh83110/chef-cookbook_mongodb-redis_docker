execute 'stop container' do
  command "docker stop $(docker ps | grep redis | awk '{print $1}')}"
end
