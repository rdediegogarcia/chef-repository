# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "rdediegogarcia"
client_key               "#{current_dir}/rdediegogarcia.pem"
validation_client_name   "chef-rdediego-validator"
validation_key           "#{current_dir}/chef-rdediego-validator.pem"
chef_server_url          "https://api.chef.io/organizations/chef-rdediego"
cookbook_path            ["#{current_dir}/../cookbooks"]
