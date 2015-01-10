class LikesController < ApplicationController

	def create
		@post = Post.find_post(params[:post_id])
		@post.create_like
		render json: { new_like_count: @post.likes.count }
	end

end
