require 'pg'

feature 'viewing bookmarks' do
  scenario 'viewer can see bookmarks in /browse' do
    Bookmark.create(url: "http://www.makersacademy.com")
    Bookmark.create(url: "http://www.destroyallsoftware.com")
    Bookmark.create(url: "http://www.google.com")
    visit('/bookmarks')
  end
end
