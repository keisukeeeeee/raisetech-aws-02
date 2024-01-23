require 'spec_helper'

# port
listen_port = 80

# nginx
describe package('nginx') do
  it { should be_installed }
end

# nginx process
describe process('nginx') do
  it { should be_running }
end

# unicorn.sock
describe file('/home/ec2-user/raisetech-live8-sample-app/tmp/sockets/unicorn.sock') do
  it { should be_socket }
end

# listen port
describe port(listen_port) do
  it { should be_listening }
end

# http
describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end

# git
describe package('git') do
  it { should be_installed }
end

# ruby version
describe command('ruby -v') do
  its(:stdout) { should match /ruby 3\.1\.2/ }
end

# yarn version
describe command('yarn -v') do
  its(:stdout) { should match /1\.22\.19/ }
end

# mysql
describe service('mysqld') do
  it { should be_enabled   }
  it { should be_running   }
end

# mysql.sock
describe file('/var/lib/mysql/mysql.sock') do
  it { should be_socket }
end

