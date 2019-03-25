feature 'Be able to click browse' do
  scenario 'from the index page' do
    visit('/')
    click_button('Browse')
    expect(page).to have_current_path('/browse')
  end
end
