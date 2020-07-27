feature "Add new bookmark" do
  scenario "User enters a new bookmark and it is added to the bookmark list" do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://stackoverflow.com')
    click_button('Submit')
    expect(page).to have_content "http://stackoverflow.com"
  end
end
