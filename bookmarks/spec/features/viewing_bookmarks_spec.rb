feature "View bookmarks" do
  scenario "Navigate to /bookmarks to view list of bookmarks" do
    visit('/bookmarks')
    expect(page).to have_content "https://makers.tech/"
    expect(page).to have_content "https://github.com/melanieanderson1995/"
  end
end
