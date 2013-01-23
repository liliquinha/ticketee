Feature: Editing tickets
	In order to edit existent tickets
	As a user
	I want a form to change their info
	
	
	Background:
	Given there are the following users:
	|email|password|
	|user@ticketee.com|password|
	And I am signed in as them
	And there is a project called "TextMate 2"
	And "user@ticketee.com" can view the "TextMate 2" project
	And "user@ticketee.com" has created a ticket for this project:
	|title              |description                       |
	|Make it shiny!     |Gradients, starbursts             |
	And I am on the homepage
	When I follow "TextMate 2"
	And I follow "Make it shiny!"
	And I follow "Editar"
	
	Scenario: Updating a ticket
	And I fill in "Titulo" with "Different demand"
	And I fill in "Descricao" with "Another Description"
	And I press "Update Ticket"
	Then I should see "Ticket foi editado com sucesso"
	And I should see "Another Description"
	And I should not see "Gradients, starbursts "
	
	Scenario: Updating a ticket with invalid information
	And I fill in "Titulo" with ""
	And I fill in "Descricao" with ""
	And I press "Update Ticket"
	Then I should see "Ticket nao foi editado"