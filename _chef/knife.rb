#
# User specific knife config.
#
# Further configuration at the repo level will override these.
#

node_name           ENV['USER']
client_key          "#{ENV['HOME']}/.chef/#{ENV['USER']}.pem"

cache_type          'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )

cookbook_copyright  "Nick Charlton"
cookbook_license    "apachev2"
cookbook_email      "ops@nickcharlton.net"

# AWS
knife[:aws_access_key_id] = "#{ENV['AWS_ACCESS_KEY_ID']}"
knife[:aws_secret_access_key] = "#{ENV['AWS_SECRET_ACCESS_KEY']}"
knife[:flavor] = "t1.micro" # Micro (615MiB RAM)
knife[:region] = "us-west-2" # Oregon
knife[:image] = "ami-4ac9437a" # Ubuntu Precise (12.04) EBS 64bit

# Digital Ocean
knife[:digital_ocean_client_id] = "#{ENV['DIGITAL_OCEAN_CLIENT_ID']}"
knife[:digital_ocean_api_key] = "#{ENV['DIGITAL_OCEAN_API_KEY']}"
