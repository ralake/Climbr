class LikesController < ApplicationController

	def create
		@post = Post.find_post(params[:post_id])
		@post.like_post
		render json: { new_like_count: @post.likes.count }
	end

end
