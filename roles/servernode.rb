name 'servernode'
description 'ServerNode: Magento'

# List of recipes and roles to apply.
run_list(
  'role[base]',
  'recipe[magento::servernode]'
)

# Attributes applied if the node doesn't have it set already.
default_attributes()

# Attributes applied no matter what the node has set already.
override_attributes()

