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
			post_image
			expect(page).to have_css("img[src*='AD.jpg']")
			expect(page).to have_content("Ama Dablam")
		end

	end

	context 'Editing a post' do

		scenario 'A user edits a post' do
			post_image
			click_link('Edit post')
			fill_in "Description", with: "Ama Dablam South Face"
			click_button('Post!')
			expect(page).to have_content("Ama Dablam South Face")
		end

	end

	context 'Deleting posts' do

		scenario 'A user can delete a post' do
			post_image
			click_link('Delete post')
			expect(page).to have_content('No images')
		end

	end

end