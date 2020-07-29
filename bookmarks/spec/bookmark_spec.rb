require "bookmark"
require "database_helpers"

describe Bookmark do
  describe ".all" do
    it "returns a list of bookmarks" do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url: "http://www.google.com", title: "Google")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy all Software")
      Bookmark.create(url: "http://www.github.com/melanieanderson1995", title: "My Github")

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 4
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(url: 'http://www.stackoverflow.com', title: 'Stack Overflow')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Stack Overflow'
      expect(bookmark.url).to eq 'http://www.stackoverflow.com'
    end
  end
end
