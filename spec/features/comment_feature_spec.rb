require 'rails_helper'

feature 'Comments' do
	
	context 'Commenting on a post' do

		scenario 'Posting a comment' do
			post_image
			click_link('Comment')
			fill_in 'Comment', with: "Marvelous image!"
			click_button('Post comment')
			expect(page).to have_content("Marvelous image!")
		end

	end

end