require_relative '../spec_helper.rb'

describe 'sample-cookbook::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

  it 'installs the apache2 package' do
    expect(chef_run).to install_package('apache2')
  end
end
