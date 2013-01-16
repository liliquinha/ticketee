Feature: Creating projects

	In order to have projects to assign tickets to 
	As a user
	I want to create them very easily
	
	Background:
	Given there are the following users:
		|email            |password|admin |
		|user@ticketee.com|password|true  |
	And I am signed in as them
	Given I am on the homepage
	When I follow "Novo Projeto"
	
	Scenario: Creating a project
	And I fill in "Nome" with "Beauty Community"
	And I press "Criar Projeto"
	Then I should see "Projeto foi criado!"
	And I should be on the project page for "Beauty Community"
	And I should see "Beauty Community"
	
	Scenario: Creating a project without a name
	  And I press "Criar Projeto"
	  Then I should see "Projeto nao foi criado."
	  And I should see "Name can't be blank"