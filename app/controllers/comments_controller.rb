class CommentsController < ApplicationController

	def new
		if current_user.nil?
			flash[:notice] = "You must be signed in to post comments"
			redirect_to posts_path
		else
			@post = Post.find_post(params[:post_id])
			@comment = Comment.new_comment
		end
	end

	def create
		@post = Post.find_post(params[:post_id])
		@post.create_comment(comments_params, current_user.id)
		redirect_to posts_path
	end

	def comments_params
		params.require(:comment).permit(:comments)
	end

end
