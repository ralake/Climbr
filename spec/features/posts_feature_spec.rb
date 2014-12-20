require 'rails_helper'

feature 'Posts' do
	
	context 'No pictures have been uploaded' do

		scenario 'Should display a prompt to post a picture' do
			visit '/posts'
			expect(page).to have_content("No pictures")
			expect(page).to have_link("Post a picture")
		end

	end

end