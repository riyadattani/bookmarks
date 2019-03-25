feature 'view stored list of bookmarks' do
  scenario 'in /bookmarks' do
    visit '/'
    click_button 'Browse'
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end

end
