require 'pg'
=begin
feature "View bookmarks" do
  scenario "Navigate to /bookmarks to view list of bookmarks" do
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.github.com/melanieanderson1995"
  end
end
=end

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com')")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com')")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com')")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.github.com/melanieanderson1995')")

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.github.com/melanieanderson1995"
  end
end
