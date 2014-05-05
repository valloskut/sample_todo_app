def sign_in(user)
  visit new_user_session_path
  fill_in "user_email", with: user.email
  fill_in "user_password", with: user.password
  click_button 'Sign In'
end

def sign_out
  Capybara.current_session.driver.delete destroy_user_session_path, method: :delete
end
