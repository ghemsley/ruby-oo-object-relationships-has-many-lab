class Post
  @@all = []
  attr_accessor :title
  attr_reader :author
  def initialize(title)
    @title = title
    @author = nil
    @@all.push(self)
  end

  def author=(author)
    @author = author
    author.posts.push(self)
  end

  def author_name
    author.name if author
  end

  def self.all
    @@all
  end

  def self.post_count
    all.length
  end
end
