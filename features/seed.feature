Feature: Seed Data

Scenario: The basics
	Given I have run the seed task
	And I am signed in as "admin@ticketee.com"
	Then I should see "Ticketee Beta"