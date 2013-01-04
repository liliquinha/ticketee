Feature: Creating tickets
	In order to create tickets for a project
	As a user
	I want to select a project and add a ticket to it
	
	Background:
	Given there is a project called "Movies"
	And I am on the homepage
	When I follow "Movies"
	And I follow "Novo Ticket"
	
	Scenario: Creating a ticket
	And I fill in "Titulo" with "Problemas na criacao de comunidades"
	And I fill in "Descricao" with "Pessoas nao conseguem entrar na comunidade"
	And I press "Create Ticket"
	Then I should see "Ticket foi criado."
	
	Scenario: Creating a ticket without valid attributes
	And I fill in "Titulo" with ""
	And I fill in "Descricao" with ""
	And I press "Create Ticket"
	Then I should see "Title can't be blank"
	And I should see "Description can't be blank"
	
	Scenario: Description must be longer than 10 characters
	And I fill in "Titulo" with "Problemas na criacao de comunidades"
	And I fill in "Descricao" with "it sucks"
	And I press "Create Ticket"
	Then I should see "Description is too short"