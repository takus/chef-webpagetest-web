#
# Cookbook Name:: webpagetest-web
# Recipe:: default
#
# Copyright 2013, Takumi Sakamoto
#
# All rights reserved - Do Not Redistribute
#

documentroot = "#{node['webpagetest-web']['documentroot']}/webpagetest"

# yum
include_recipe 'yum-repoforge'
include_recipe 'build-essential'
include_recipe 'git'

# packages
%w{ ffmpeg ffmpeg-devel ImageMagick ImageMagick-devel perl-Image-ExifTool }.each do |pkg|
  package pkg do
    action :install
  end
end

# apache
include_recipe 'apache2'
include_recipe 'apache2::mod_expires'
include_recipe 'apache2::mod_headers'
include_recipe 'apache2::mod_rewrite'

# php
include_recipe 'php'

template '/etc/php.ini' do
  mode  0644
  owner 'root'
  group 'root'
end

%w{ pcre pcre-devel php-gd php-pecl-apc }.each do |pkg|
  package pkg do
    action :install
  end
end

%w{ zip }.each do |pkg|
  php_pear pkg do
    action :install
  end
end

# application
directory '/var/app' do
  owner  'apache'
  group  'apache'
  mode   '0755'
  action :create
  not_if { Dir.exists? '/var/app' }
end

git '/var/app/webpagetest' do
  user       'apache'
  group      'apache'
  repository 'https://github.com/WPO-Foundation/webpagetest.git'
  reference  'master'
  action     :sync
end

link documentroot do
  to "/var/app/webpagetest/www"
end

web_app "webpagetest-web" do
  docroot  documentroot
  template "webpagetest.conf.erb"
end
