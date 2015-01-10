class Comment < ActiveRecord::Base

	belongs_to :post
	belongs_to :user

  def self.new_comment
    new
  end

end
