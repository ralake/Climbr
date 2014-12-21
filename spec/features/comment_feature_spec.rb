require 'rails_helper'

feature 'Comments' do
	
	context 'Commenting on a post' do

		scenario 'Posting a comment' do
			post_image
			post_comment
			expect(page).to have_content("Marvelous image!")
		end

	end

end