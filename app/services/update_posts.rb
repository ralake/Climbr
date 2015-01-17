class FindAndUpdatePost

  def self.edit(id, details)
    @post = Post.find(id)
    @post.update(details)
  end

end