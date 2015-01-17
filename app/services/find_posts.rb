class FindPosts 

  def self.all
    Post.all
  end

  def self.one(id)
    Post.find(id)
  end

end