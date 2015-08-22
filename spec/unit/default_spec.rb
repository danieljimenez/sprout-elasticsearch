require 'unit/spec_helper'

describe 'sprout-elasticsearch::default' do
  let(:chef_run) { ChefSpec::SoloRunner.converge(described_recipe) }

  it 'includes the path recipe' do
    expect(chef_run).to include_recipe('sprout-elasticsearch::install_elasticsearch')
    expect(chef_run).to include_recipe('sprout-elasticsearch::add_launch_agent')
  end
end
