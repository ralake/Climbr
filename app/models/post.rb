class Post < ActiveRecord::Base

	has_many :comments, dependent: :destroy
	has_many :likes
	belongs_to :user

	has_attached_file :image,
		:styles => { :medium => "500x500>" },
		:convert_options => { :all => '-auto-orient' }, 
		:storage => :s3,
		:s3_credentials => {
	  	:bucket => ENV['S3_BUCKET_NAME'],
	  	:access_key_id => ENV['AWS_ACCESS_KEY_ID'],
	  	:secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
	  	},
		:s3_host_name => 's3-eu-west-1.amazonaws.com'

	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

	def update_post(post_details)
		self.update(post_details)
	end

	def destroy_post
		self.destroy
	end

	def create_like
		self.likes.create
	end

	def create_comment(comment_details, user_id)
		@comment = self.comments.create(comment_details)
		@comment.user_id = user_id
	end


	def self.show_all
		all
	end

	def self.create_post(post_details, user_id)
		@post = create(post_details)
		@post.user_id = user_id
		@post.save
	end

	def self.find_post(id)
		@post = find(id)
	end

	def self.new_post
		new
	end

end
