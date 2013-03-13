#
# Cookbook Name:: Debian Backports
# Recipe:: default
#
# Copyright 2012, Dracars Designs
#
# All rights reserved - Do Not Redistribute
#
# To-Do add attributes to abstract values
# Add the Debian Backports repository.

include_recipe "apt"

apt_repository "debian-backports" do
  uri "http://backports.debian.org/debian-backports"
  components ["#{node['debian-backports']['version-name']}-backports", "main"]
end
