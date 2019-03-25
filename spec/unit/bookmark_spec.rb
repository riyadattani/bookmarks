require 'bookmark'

describe Bookmark do
  subject(:bookmark) { described_class.new }

  it 'receives all method and returns an array' do
    expect(described_class.all).to be_an_instance_of(Array)
  end
end
