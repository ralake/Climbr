require 'rails_helper'

feature 'Posts' do
	
	context 'No pictures have been uploaded' do

		scenario 'Should display a prompt to post a picture' do
			user_signs_up('test@test.com', 'password1')
			expect(page).to have_content("No images")
			expect(page).to have_link("Post an image")
		end

	end

	context 'Posting pictures' do

		scenario 'A user cannot post an image unless they are signed in' do
			visit '/posts'
			expect(page).not_to have_link("Post an image")
		end

		scenario 'A signed-up-user fills out a form to post an image' do
			user_signs_up('test@test.com', 'password1')
			post_image
			expect(page).to have_css("img[src*='AD.jpg']")
			expect(page).to have_content("Ama Dablam")
		end

	end

	context "Editing a post" do

		scenario "A user cannot edit a post unless they are the author" do
			user_signs_up('test@test.com', 'password1')
			post_image
			click_link("Sign out")
			user_signs_up('test@test2.com', 'password2')
			expect(page).not_to have_link("Edit post")
		end

		scenario "A user who created a post can edit it" do
			user_signs_up('test@test.com', 'password1')
			post_image
			click_link('Edit post')
			fill_in "Description", with: "Ama Dablam South Face"
			click_button('Post!')
			expect(page).to have_content("Ama Dablam South Face")
		end

	end

	context "Deleting posts" do

		scenario "A user cannot delete a post unless they are the author" do
			user_signs_up('test@test.com', 'password1')
			post_image
			click_link("Sign out")
			user_signs_up('test@test2.com', 'password2')
			expect(page).not_to have_link("Delete post")
		end

		scenario 'A user who created a post can delete it' do
			user_signs_up('test@test.com', 'password1')
			post_image
			click_link("Delete post")
			expect(page).to have_content("No images")
			expect(page).to have_content("Post deleted")
		end

	end

end