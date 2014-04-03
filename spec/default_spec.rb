# encoding: utf-8
require 'spec_helper'

# Write unit tests with ChefSpec - https://github.com/sethvargo/chefspec#readme
describe 'etcd_ubuntu_server::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'includes the `ubuntu_base` recipe' do
    expect(chef_run).to include_recipe('ubuntu_base::default')
  end

  it 'includes the `octobase` recipe' do
    expect(chef_run).to include_recipe('octobase::default')
  end

  it 'includes the `etcd` recipe' do
    expect(chef_run).to include_recipe('etcd::default')
  end
end
