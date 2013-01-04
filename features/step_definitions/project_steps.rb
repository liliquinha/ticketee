Given /^there is a project called "(.*?)"$/ do |name|
  Factory(:project, name: name)
end

Then /^I should be on the project edit page for "(.*?)"$/ do |project_name|
  visit edit_project_path(Project.find_by_name!(project_name))
end