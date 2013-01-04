Given /^I am on the homepage$/ do
  visit root_url
end

When /^I follow "(.*?)"$/ do |link|
  click_link link
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, text|
  fill_in field, with: text
end

When /^I press "(.*?)"$/ do |button|
  click_button button
end

Then /^I should see "(.*?)"$/ do |message|
  page.should have_content(message)
end

Then /^I should be on the project page for "(.*?)"$/ do |project_name|
  visit project_path(Project.find_by_name!(project_name))
end