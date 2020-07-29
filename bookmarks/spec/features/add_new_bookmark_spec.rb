feature "Add new bookmark" do
  scenario "User enters a new bookmark and it is added to the bookmark list" do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://stackoverflow.com')
    fill_in('title', with: 'Stack Overflow')
    click_button('Submit')
    expect(page).to have_link('Stack Overflow', href: 'http://stackoverflow.com')
  end
end
