require 'rails_helper'

feature 'Comments' do
	
	context "Commenting on a post" do

		scenario "A signed-up user can post a comment" do
			user_signs_up
			post_image
			post_comment
			expect(page).to have_content("Marvelous image!")
		end

		scenario "A user who hasn't signed up attempts to comment on a post" do
			user_signs_up
			post_image
			click_link("Sign out")
			click_link('Comment')
			expect(page).to have_content("You must be signed in to post comments")
		end

	end

end