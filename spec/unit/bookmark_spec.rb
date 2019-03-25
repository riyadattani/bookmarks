require 'bookmark'

describe Bookmark do
  subject(:bookmark) { described_class.new }

  it 'receives all method and returns an array' do
    expect(described_class.all).to be_an_instance_of(Array)
  end

  describe '.all' do

    it 'returns list of bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include "http://www.makersacademy.com"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end

  end

end
