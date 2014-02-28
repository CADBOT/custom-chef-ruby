#
# Cookbook Name:: ruby
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
#Dependencies
package 'gcc'
package 'make'

#Grab and install ruby-install
remote_file '/tmp/ruby-install-v0.4.0.tar.gz' do
  source 'https://github.com/postmodern/ruby-install/archive/v0.4.0.tar.gz'
end

execute 'extractTar' do
  cwd '/tmp'
  command 'tar -xzvf ruby-install-v0.4.0.tar.gz'
end

bash 'install' do
  cwd '/tmp/ruby-install-0.4.0'
  code <<-EOF
    make install
  EOF
end

execute 'installRuby' do
 command 'ruby-install ruby'
end
