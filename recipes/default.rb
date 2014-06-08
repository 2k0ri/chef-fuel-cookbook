#
# Cookbook Name:: fuel-cookbook
# Recipe:: default
#
# Copyright (C) 2014 
#
# 
#
%w{yum-epel yum-remi yum-repoforge chef-fuel::remi-php55}.each do |y|
  include_recipe y
end

%w{httpd mysql-server php git centos-release-SCL}.each do |p|
  yum_package p do
    action :upgrade
    options '--enablerepo=epel-testing,remi-php55,rpmforge-extras'
  end
end
