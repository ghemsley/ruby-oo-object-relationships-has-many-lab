class Author
  @@all = []
  attr_accessor :name
  attr_reader :posts
  def initialize(name)
    @name = name
    @posts = []
    @@all.push(self)
  end

  def add_post(post)
    post.author = self
    posts.push(post)
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    posts.push(post)
  end

  def self.all
    @@all
  end

  def self.post_count
    Post.all.reject do |post|
      post.author.nil?
    end.length
  end
end
