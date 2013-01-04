Feature: Editing projects
	In order to update project information
	As a user
	I want to be able to do that through an interface
	
	Background:
		Given there is a project called "TextMate 2"
		And I am on the homepage
		When I follow "TextMate 2"
		And I follow "Editar Projeto"
		
	Scenario: Updating a project
		And I fill in "Nome" with "TextMate 2 beta"
		And I press "Editar Projeto"
		Then I should see "Projeto foi editado com sucesso."
		And I should be on the project page for "TextMate 2 beta"
		
	Scenario: Updating a project with blank name
		And I fill in "Nome" with ""
		And I press "Editar Projeto"
		Then I should see "Projeto nao foi editado."
		And I should be on the project edit page for "TextMate 2"