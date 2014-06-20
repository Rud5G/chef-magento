#
# Cookbook Name:: magento
# Attribute:: magento
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


default['application']['admin']['firstname'] = "Firstname"
default['application']['admin']['lastname'] = "Lastname"
default['application']['admin']['email'] = "f.lastname@example.com"
default['application']['admin']['username'] = "admin"
default['application']['admin']['password'] = "magepass"

# --license_agreement_accepted "yes" \
# --locale "en_US" \
# --timezone "Europe/Berlin" \
# --default_currency "EUR" \
# --use_rewrites "yes" \
# --use_secure "no" \
# --use_secure_admin "no" \
# --skip_url_validation \