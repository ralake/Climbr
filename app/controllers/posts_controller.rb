class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		@post.user_id = current_user.id
		@post.save
		redirect_to posts_path
	end

	def edit
		@post = Post.find(params[:id])
		if current_user.id != @post.user_id
			flash[:alert] = "You cannot edit this post"
		else
		end
	end

	def update
		@post = Post.find(params[:id])
		@post.update(post_params)
		redirect_to posts_path
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		flash[:notice] = "Post deleted"
		redirect_to posts_path
	end

	def post_params
		params.require(:post).permit(:description, :image, :id)
	end

end
