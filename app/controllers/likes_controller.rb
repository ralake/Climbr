class LikesController < ApplicationController

	def create
		@post = FindPosts.one(params[:post_id])
		@post.create_like
		render json: { new_like_count: @post.likes.count }
	end

end
