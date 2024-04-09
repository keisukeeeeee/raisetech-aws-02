require 'spec_helper'

# describe package('httpd'), :if => os[:family] == 'redhat' do
#   it { should be_installed }
# end

# describe package('apache2'), :if => os[:family] == 'ubuntu' do
#   it { should be_installed }
# end

# describe service('httpd'), :if => os[:family] == 'redhat' do
#   it { should be_enabled }
#   it { should be_running }
# end

# describe service('apache2'), :if => os[:family] == 'ubuntu' do
#   it { should be_enabled }
#   it { should be_running }
# end

# describe service('org.apache.httpd'), :if => os[:family] == 'darwin' do
#   it { should be_enabled }
#   it { should be_running }
# end

# git
describe package('git') do
  it { should be_installed }
end

# mysql
describe command('which mysql') do
  its(:exit_status) { should eq 0 }
end

# node.js
describe command('which node') do
  its(:exit_status) { should eq 0 }
end

# ruby version
# describe command('ruby -v') do
#   its(:stdout) { should match /ruby 3\.1\.2/ }
# end

# describe port(80) do
#   it { should be_listening }
# end
