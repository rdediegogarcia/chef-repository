#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

node.default['haproxy']['members'] = 
[{
    'hostname' => 'ec2-54-159-236-172.compute-1.amazonaws.com',
    'ipaddress' => '54.159.236.172',
    'port' => 80,
    'ssl_port' => 80
},{
    'hostname' => 'ec2-54-227-219-239.compute-1.amazonaws.com',
    'ipaddress' => '54.227.219.239',
    'port' => 80,
    'ssl_port' => 80
}]

include_recipe 'haproxy::default'
