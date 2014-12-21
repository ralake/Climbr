require 'rails_helper'

feature 'Users' do
	
	context "User not signed in visits the homepage" do

		scenario "should see sign up and in links" do
			visit '/posts'
			expect(page).to have_link("Sign up")
			expect(page).to have_link("Sign in")
		end

		scenario "should not see sign out link" do
			visit '/posts'
			expect(page).not_to have_link("Sing out")
		end

	end

end