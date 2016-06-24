#
# Cookbook Name:: mydocker
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
docker_service 'default' do
  action [:create, :start]
end

# Pull latest image
docker_image 'busybox' do
  tag 'latest'
  action :pull
  notifies :redeploy, 'docker_container[my_busybox]'
end

# 
docker_image 'jenkins' do
  tag 'latest'
  action :pull
  notifies :redeploy, 'docker_container[myjenkins]'
end

# 
docker_container 'my_busybox' do
  repo 'busybox'
  command 'ls -la /'
  action :run
end

#
docker_container 'myjenkins' do
   repo 'jenkins'
   action :run
   port '8080'
end
