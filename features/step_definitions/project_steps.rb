Given /^there is a project called "(.*?)"$/ do |name|
  Factory(:project, name: name)
end

Then /^I should be on the project edit page for "(.*?)"$/ do |project_name|
  visit edit_project_path(Project.find_by_name!(project_name))
end

Then /^I should be on the homepage$/ do
  visit root_url
end

Then /^I should not see "(.*?)"$/ do |project_name|
  page.should_not have_content(project_name)
end