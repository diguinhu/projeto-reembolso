require 'rails_helper'

	feature "Editing User" do
		scenario "Change password" do
		user = FactoryGirl.create(:user)
		visit new_user_session_path

		fill_in "Email", with: user.email
		fill_in "Password", with: user.password
		click_button "Sign in"	

		visit edit_user_registration_path

		fill_in 'Name', with: user.name
		fill_in 'Password', with: "newpassword"
		fill_in 'Password confirmation', with: "newpassword"
		fill_in 'Current password', with: user.password

		click_button "Update"
		end
	end