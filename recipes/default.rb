#
# Cookbook Name:: vim
# Recipe:: default
#
# Author:: Kirill Kouznetsov <agon.smith@gmail.com>
#
# Copyright 2013, Kirill Kouznetsov
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

package node['vim']['package']

update_alternatives_bin = '/usr/bin/update-alternatives'

execute 'set default system editor' do
  command "#{update_alternatives_bin} --set editor #{node['vim']['binary']}"
  user 'root'
  not_if "#{update_alternatives_bin} --query editor | /bin/grep -q '^Value: #{node['vim']['binary']}$'"
end

template '/etc/vim/vimrc.local' do
  source 'vimrc_local.erb'
  mode 0644
  owner 'root'
  group 'root'
end
