Feature: Creating projects

	In order to have projects to assign tickets to 
	As a user
	I want to create them very easily
	
	Scenario: Creating a project
	Given I am on the homepage
	When I follow "Novo Projeto"
	And I fill in "Nome" with "Beauty Community"
	And I press "Criar Projeto"
	Then I should see "Projeto foi criado!"