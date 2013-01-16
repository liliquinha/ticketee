Given /^there are the following users:$/ do |table|
  table.hashes.each do |attributes|
       unconfirmed = attributes.delete("unconfirmed") == "true"
       admin = attributes["admin"]
       attributes.delete("admin")
       @user = User.create!(attributes)
       @user.update_attribute("admin", admin=="true")
       @user.confirm! unless unconfirmed
  end
end

Given /^I am signed in as them$/ do
  steps ( %Q{
 	Given I am on the homepage
	When I follow "Entrar"
	And I fill in "Email" with "#{@user.email}"
	And I fill in "Senha" with "password"
	And I press "Sign in"
	Then I should see "Signed in successfully."
  })
end

Given /^I am signed in as "(.*?)"$/ do |email|
  @user = User.find_by_email(email)
  steps("Given I am signed in as them")
end





