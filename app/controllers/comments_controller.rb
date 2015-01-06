class CommentsController < ApplicationController

	def new
		if !current_user.nil?
			@post = Post.find(params[:post_id])
			@comment = Comment.new
		else
			flash[:notice] = "You must be signed in to post comments"
			redirect_to posts_path
		end
	end

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comments_params)
		@comment.user_id = current_user.id
		redirect_to posts_path
	end

	def comments_params
		params.require(:comment).permit(:comments)
	end

end
