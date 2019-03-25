feature 'view stored list of bookmarks' do
  scenario 'in /bookmarks' do
    visit '/'
    click_button 'Browse'
    expect(page).to have_content 'Here is a list of your bookmarks: URL1URL2URL3'
  end

end
