class CommentsController < ApplicationController

	def new
		if current_user.nil?
			flash[:notice] = "You must be signed in to post comments"
			redirect_to posts_path
		else
			@post = FindPosts.one(params[:post_id])
			@comment = CreateNewComment.call
		end
	end

	def create
		@post = FindPosts.one(params[:post_id])
		CreateNewComment.save(@post.id, comments_params, current_user.id)
		redirect_to posts_path
	end

	def comments_params
		params.require(:comment).permit(:comments)
	end

end
