class FindPosts 

  def self.all
    Post.all
  end

  def self.one(id)
    @post = Post.find(id)
  end

end