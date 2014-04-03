# encoding: utf-8
require 'spec_helper'

# Write integration tests with Serverspec - http://serverspec.org/
describe 'etcd_ubuntu_server::default' do
  describe service('etcd') do
    it { should be_enabled }
    it { should be_running }
  end

  describe service('ssh') do
    it { should be_enabled }
    it { should be_running }
  end
end
