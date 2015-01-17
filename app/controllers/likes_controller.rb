class LikesController < ApplicationController

	def create
		@post = FindPosts.one(params[:post_id])
		AddLikeToPost.call(@post.id)
		render json: { new_like_count: @post.likes.count }
	end

end
