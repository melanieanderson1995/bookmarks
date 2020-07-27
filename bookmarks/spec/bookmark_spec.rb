require "bookmark"

describe Bookmark do
  describe ".all" do
    it "returns all bookmarks" do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      Bookmark.create(url: 'http://www.makersacademy.com')
      Bookmark.create(url: 'http://www.google.com')
      Bookmark.create(url: 'http://www.destroyallsoftware.com')
      Bookmark.create(url: 'http://www.github.com/melanieanderson1995')
      
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.google.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("http://www.github.com/melanieanderson1995")
    end
  end

  describe ".create" do
    it "creates a new bookmark" do
      Bookmark.create(url: 'http://stackoverflow.com')
      expect(Bookmark.all).to include('http://stackoverflow.com')
    end
  end
end
