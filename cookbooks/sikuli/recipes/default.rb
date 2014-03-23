version = node['sikuli']['version']
filename = "sikuli-setup.jar"
remote_file "/vagrant/lib/#{filename}" do
  source "https://launchpad.net/sikuli/sikulix/#{version}/+download/#{filename}"

  action :create_if_missing
end