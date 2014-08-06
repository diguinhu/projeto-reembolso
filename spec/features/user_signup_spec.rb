require 'rails_helper'

	feature "Sign up" do
		scenario "New user" do
		#user = FactoryGirl.create(:user)
		visit new_user_registration_path

		fill_in "Name", with: 'user.email'
		fill_in "Email", with: 'user.email'
		fill_in "Password", with: '12345678'
		fill_in "Password confirmation", with: '12345678'
		click_button "Sign up"

	end
end