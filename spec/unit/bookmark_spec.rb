require 'bookmark'

describe Bookmark do
  subject(:bookmark) { described_class.new }

  it 'receives all method and returns an array' do
    expect(described_class.all).to be_an_instance_of(Array)
  end

  describe '.all' do

    it 'returns list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmark.all
      expect(bookmarks).to include "http://www.makersacademy.com"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end

  end

end
