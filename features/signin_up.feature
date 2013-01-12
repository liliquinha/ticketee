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
		Then I should see "You have signed up successfully."	