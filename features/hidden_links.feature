Feature: Hidden links
	In order to clean up the user xperience
	As the system
	I want to lide links from users who cannot act on them
	
	Background:
		Given there are the following users:
			|email|password|admin|
			|user@ticketee.com|password|false|
			|admin@ticketee.com|password|true|
		And there is a project called "TextMate 2"
		And "user@ticketee.com" can view the "TextMate 2" project
		
	Scenario: New project link is hidden for non-signed-in users
		Given I am on the homepage
		Then I should not see the "Novo Projeto" link
	
	Scenario: New project link is hidden for signed-in users
		Given I am signed in as "user@ticketee.com"
		Then I should not see the "Novo Projeto" link
		
	Scenario: New project link is shown for admins
		Given I am signed in as "admin@ticketee.com"
		Then I should see the "Novo Projeto" link
		
		
	Scenario: Edit project link is hidden for signed-in users
		Given I am signed in as "user@ticketee.com"
		When I follow "TextMate 2"
		Then I should not see the "Editar Projeto" link
		
	Scenario: Edit project link is shown to admins
		Given I am signed in as "admin@ticketee.com"
		When I follow "TextMate 2"
		Then I should see the "Editar Projeto" link
	
		
	Scenario: Delete project link is hidden for signed-in users
		Given I am signed in as "user@ticketee.com"
		When I follow "TextMate 2"
		Then I should not see the "Delete" link
		
	Scenario: Delete project link is shown to admins
		Given I am signed in as "admin@ticketee.com"
		When I follow "TextMate 2"
		Then I should see the "Delete" link