# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'ilm_vmware_linux_base_policy'

# Where to find external cookbooks:
default_source :chef_server, 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'

# run_list: chef-client will run these recipes in the order specified.
run_list 'ILM_SatRegister::default', 'ILM_Flexera::default', 'ILM_Splunk::default',
'ILM_Nessus::default', 'ILM_Systemd::default', 'ILM_Ntp::default', 'chef-client-service::default',
'ILM_Motd::default', 'ILM_Resolver::default', 'ILM_Banner::default', 'ILM_AccessGrps::default', 'ILM_Tag::default', 'ILM_vmtoolsd::default',
'ILM_Users::default', 'ILM_Domain_Join::default', 'ilm_no_proxy::default', 'ilm_ca_trust::default', 'ilm_restrict_root_access::default',
'ilm_cron::default', 'ILM_Secret::default', 'ILM_Linux_MDE::default', 'chef-client-service::default', 'compliance_wrapper::default'

include_policy 'ILM_SatRegister', policy_name: 'ILM_SatRegister', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Nessus', policy_name: 'ILM_Nessus', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Systemd', policy_name: 'ILM_Systemd', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Ntp', policy_name: 'ILM_Ntp', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Resolver', policy_name: 'ILM_Resolver', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Banner', policy_name: 'ILM_Banner', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Motd', policy_name: 'ILM_Motd', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Tag', policy_name: 'ILM_Tag', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_vmtoolsd', policy_name: 'ILM_vmtoolsd', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Secret', policy_name: 'ILM_Secret', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Linux_MDE', policy_name: 'ILM_Linux_MDE', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Users', policy_name: 'ILM_Users', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Domain_Join', policy_name: 'ILM_Domain_Join', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ilm_no_proxy', policy_name: 'ilm_no_proxy', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ilm_ca_trust', policy_name: 'ilm_ca_trust', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ilm_ca', policy_name: 'ilm_ca_trust', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ilm_restrict_root_access', policy_name: 'ilm_restrict_root_access', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ilm_cron', policy_name: 'ilm_cron', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_AccessGrps', policy_name: 'ILM_AccessGrps', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Splunk', policy_name: 'ILM_Splunk', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'ILM_Flexera', policy_name: 'ILM_Flexera', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'chef-client-service', policy_name: 'chef-client-service', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'
include_policy 'compliance_wrapper', policy_name: 'compliance_wrapper', policy_group: 'POLICY_GROUP', server: 'https://chef-osc.global.tesco.org/organizations/CHEF_ORG/'


# include_policy 'ILM_SatRegister', policy_name: 'ILM_SatRegister', policy_group: POLICY_GROUP, server: CHEF_SERVER