def login
  visit root_path

  fill_in "Username", with: "User"
  fill_in "Password", with: "password"
  click_on "Login"
end
