execute 'stop container' do
  command "docker stop $(docker ps | grep mongo | awk '{print $1}')}"
end
