#
# Cookbook Name:: magento
# Attribute:: samba
#
# Copyright (C) 2014 Triple-networks
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['samba']['server_string'] = 'magento-dev'
default['samba']['netbios_name'] = 'magento-dev'
default['samba']['workgroup'] = 'WORKGROUP'
default['samba']['interfaces'] = '127.0.0.0/8 eth0'
default['samba']['hosts_allow'] = 'ALL'
default['samba']['passdb_backend'] = 'tdbsam'
default['samba']['dns_proxy'] = 'no'
default['samba']['security'] = 'user'
default['samba']['config'] = '/etc/samba/smb.conf'
default['samba']['log_dir'] = '/var/log/samba/%m.log'
default['samba']['load_printers'] = 'no'

