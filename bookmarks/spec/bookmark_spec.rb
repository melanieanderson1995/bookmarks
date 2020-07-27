require "bookmark"

describe Bookmark do
  describe ".all" do
    it "returns all bookmarks" do
      bookmarks = Bookmark.all
      expect(bookmarks).to include("https://makersacademy.com/")
      expect(bookmarks).to include("https://www.google.com")
      expect(bookmarks).to include("http://www.destroyallsoftware.com")
      expect(bookmarks).to include("https://github.com/melanieanderson1995/")
    end
  end
end
