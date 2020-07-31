feature 'Deleting a bookmark' do
  scenario 'A user can delete a bookmark' do
    Bookmark.create(url: 'http://www.reddit.com', title: 'Reddit')
    visit('/bookmarks')
    expect(page).to have_link('Reddit', href: 'http://www.reddit.com')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Reddit', href: 'http://www.reddit.com')
  end
end
