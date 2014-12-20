require 'rails_helper'

feature 'Posts' do
	
	context 'No pictures have been uploaded' do

		scenario 'Should display a prompt to post a picture' do
			visit '/posts'
			expect(page).to have_content("No images")
			expect(page).to have_link("Post an image")
		end

	end

	context 'Posting pictures' do

		scenario 'A user fills out a form to post the image' do
			visit '/posts'
			click_link("Post an image")
			fill_in 'Description', with: "Ama Dablam"
			attach_file('post[image]', 'spec/features/AD.jpg')
			click_button('Post!')
			expect(page).to have_css("img[src*='AD.jpg']")
			expect(page).to have_content("Ama Dablam")
		end

	end

end