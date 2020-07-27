feature "View bookmarks" do
  scenario "Navigate to /bookmarks to view list of bookmarks" do
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.github.com/melanieanderson1995"
  end
end
