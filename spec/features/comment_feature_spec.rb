require 'rails_helper'

feature 'Comments' do
	
	context "Commenting on a post" do

		scenario "A signed-up user can post a comment" do
			user_signs_up('test@test.com', 'testtest1')
			user_posts_image
			user_posts_comment
			expect(page).to have_content("Marvelous image!")
		end

		scenario "A comment will have information on when it was posted" do
			user_signs_up('test@test.com', 'testtest1')
			user_posts_image
			user_posts_comment
			expect(page).to have_content('Posted')
		end

		scenario "A user who hasn't signed up attempts to comment on a post" do
			user_signs_up('test@test.com', 'testtest1')
			user_posts_image
			click_link("Sign out")
			expect(page).not_to have_link("Comment")
		end

	end

end