require 'spec_helper'
require 'socket'

describe 'sprout-elasticsearch' do
  before :all do
    system('elasticsearch -v &> /dev/null') && fail('This system already has elasticsearch installed')
    expect(system('soloist')).to be_true
  end

  it 'runs elasticsearch on the default port' do
    expect do
      TCPSocket.open('localhost', 9200).close
    end.not_to raise_error

    expect(system('elasticsearch -v &> /dev/null')).to be_true
  end

  it 'is managed by launchd' do
    expect(system('launchctl list homebrew.mxcl.elasticsearch14 &> /dev/null')).to be_true
  end
end
