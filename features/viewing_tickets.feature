Feature: Viewing tickets
	In order to view the tickets for a project
	As a user
	I want to see them on that project's page
	
	Background:
	Given there are the following users:
		|email            |password|
		|user@ticketee.com|password|
	And there is a project called "TextMate 2"
	And "user@ticketee.com" has created a ticket for this project:
		|title              |description                       |
		|Make it shiny!     |Gradients, starbursts             | 
		|Add auto-completion|auto-completion is a must nowadays| 
	And there is a project called "Travel community"
	And "user@ticketee.com" has created a ticket for this project:
		|title                                  |description                                        |
		|Add traveller friend auto-matching     |People like to have a backup company               | 
		|Add chat                               |when you re travelling alone is cool to have a chat|
	When I am on the homepage
	
	Scenario: Viewing tickets for a given project
		When I follow "TextMate 2"
		Then I should see "Make it shiny!"
		And I should not see "Add chat"
		When I follow "Make it shiny!"
		Then I should see "Make it shiny!"
		And I should see "Gradients, starbursts"
		
		When I follow "Ticketee"
		And I follow "Travel community"
		Then I should see "Add chat"
		And I should not see "Make it shiny!"
		When I follow "Add chat"
		Then I should see "Add chat"
		And I should see "when you re travelling alone is cool to have a chat"