feature 'Be able to click browse' do
  scenario 'from the index page' do
    visit('/')
    click_button('Bookmark')
    expect(page).to have_current_path('/bookmarks')
  end
end
