Feature: Signing up
	In order to access my account
	As a user
	I want to be able to sign up
	
	Scenario: Signing up
		Given I am on the homepage
		When I follow "Cadastrar-se"
		And I fill in "Email" with "email@email.com"
		And I fill in "Password" with "12345678"
		And I fill in "Confirmation" with "12345678"	
		And I press "Sign up"
		Then I should see "A message with a confirmation link has been sent to your email address."
		
	Scenario: signing in via confirmation	
		Given there are the following users:
			|email          |password     |
			|user@ticketee.com|password|
		And "user@ticketee.com" opens the email with subject "Confirmation instructions"
		And they click the first link in the email
		Then I should see "Your account was successfully confirmed"
		And I should see "Ola, user@ticketee.com"