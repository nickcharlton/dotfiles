#
# User specific knife config.
#
# Further configuration at the repo level will override these.
#

node_name ENV['USER']
client_key "#{ENV['HOME']}/.chef/#{ENV['USER']}.pem"

cache_type 'BasicFile'
cache_options(path: "#{ENV['HOME']}/.chef/checksums")

cookbook_copyright ENV['NAME']
cookbook_email ENV['EMAIL']
cookbook_license 'MIT'

# AWS
knife[:aws_access_key_id] = "#{ENV['AWS_ACCESS_KEY_ID']}"
knife[:aws_secret_access_key] = "#{ENV['AWS_SECRET_ACCESS_KEY']}"
knife[:flavor] = 't1.micro' # Micro (615MiB RAM)
knife[:region] = 'eu-west-1' # Ireland
knife[:image] = 'ami-f1810f86' # Ubuntu Trusty (14.04) EBS 64bit

# Digital Ocean
knife[:digital_ocean_client_id] = "#{ENV['DIGITAL_OCEAN_CLIENT_ID']}"
knife[:digital_ocean_api_key] = "#{ENV['DIGITAL_OCEAN_API_KEY']}"
