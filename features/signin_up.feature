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
		
	Scenario: Signing in via confirmation	
		Given there are the following users:
			|email          |password|unconfirmed|    
			|user@ticketee.com|password|true|
		And "user@ticketee.com" opens the email with subject "Confirmation instructions"
		And they click the first link in the email
		Then I should see "Your account was successfully confirmed"
		And I should see "Ola, user@ticketee.com"
		
	Scenario: Signin in via form
		Given there are the following users:
		|email|password| 
		|user@ticketee.com|password|
		And I am on the homepage
		When I follow "Entrar"
		And I fill in "Email" with "user@ticketee.com"
		And I fill in "Password" with "password"
		And I press "Sign in"
		Then I should see "Signed in successfully."