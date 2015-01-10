class PostsController < ApplicationController

	def index
		@posts = Post.show_all
	end

	def new
		@post = Post.new_post
	end

	def create
		@post = Post.create_post(post_params, current_user.id)
		redirect_to posts_path
	end

	def edit
		@post = Post.find_post(params[:id])
		if not_original_user then flash[:notice] = "You cannot edit this post" end
	end

	def update
		@post = Post.find_post(params[:id])
		@post.update_post(post_params)
		redirect_to posts_path
	end

	def show
		@post = Post.find_post(params[:id])
	end

	def destroy
		@post = Post.find_post(params[:id])
		if not_original_user
			flash[:notice] = "You cannot delete this post"
		else
			@post.destroy_post
			flash[:notice] = "Post deleted"
		end
		redirect_to posts_path
	end

	def post_params
		params.require(:post).permit(:description, :image, :id)
	end

	def not_original_user
		current_user.id != @post.user_id
	end

end
