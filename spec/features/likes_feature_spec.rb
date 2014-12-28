require 'rails_helper'

feature 'Likes' do
	
	scenario "A user likes a post and the likes count goes up", js: true do
		user_signs_up('test@test.com', 'tester', 'password1')
		user_posts_image
		click_link('Like')
		expect(page).to have_content("1 like")
	end

end