class PostsController < ApplicationController

	def index
		@posts = FindPosts.all
	end

	def new
		@post = CreateNewPost.call
	end

	def create
		@post = CreateNewPost.save(post_params, current_user.id)
		redirect_to posts_path
	end

	def edit
		@post = FindPosts.one(params[:id])
		if not_original_user then flash[:notice] = "You cannot edit this post" end
	end

	def update
		FindAndUpdatePost.call(params[:id], post_params)
		redirect_to posts_path
	end

	def show
		@post = FindPosts.one(params[:id])
	end

	def destroy
		@post = FindPosts.one(params[:id])
		if not_original_user
			flash[:notice] = "You cannot delete this post"
		else
			DeletePost.call(@post.id)
			flash[:notice] = "Post deleted"
		end
		redirect_to posts_path
	end

	private

	def post_params
		params.require(:post).permit(:description, :image, :id)
	end

	def not_original_user
		current_user.id != @post.user_id
	end

end
