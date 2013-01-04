Given /^I am on the homepage$/ do
  visit root_url
end

When /^I follow "(.*?)"$/ do |arg1|
  click_link "Novo Projeto"
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |field, text|
  fill_in field, with: text
end

When /^I press "(.*?)"$/ do |button|
  click_button button
end

Then /^I should see "(.*?)"$/ do |message|
  page.has_content?(message)
end