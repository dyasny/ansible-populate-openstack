# ansible-populate-openstack
A set of simple playbooks to populate a fresh openstack installation before testing

# Instructions:

## Initial setup:
1. clone the repo onto an undercloud host or a host where overcloudrc and python clients are present
2. run setup.sh
3. source overcloudrc
4. verify openstack commands work (pip install of shade might break python-openstackclient)

## Creating resources:
`./create.yml`

## Verifying created resources:
`./create.yml --check`

## Deleting resources:
`./delete.yml`

## TODO:
1. Add stacks
2. Add ceilometer verification
3. Split the resources created and deleted into a separate vars file
4. Switch to using iteration instead of creating tenants and users one by one
