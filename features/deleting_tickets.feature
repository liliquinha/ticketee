Feature: Deleting tickets
  In order to remove tickets
  As a user
  I want to press a button and make them disappear

  Background:
	Given there is a project called "Skype for interests"
	And that project has a ticket:
		|title                   |description                             |
		|make it cooler          |add random chat with previous info      |
	Given I am on the homepage
	And I follow "Skype for interests"
	And I follow "make it cooler"

 	Scenario: Deleting a ticket
 	  When I follow "Apagar"
 	  Then I should see "Ticket foi removido"
	  And I should be on the project page for "Skype for interests"
 	
 	
