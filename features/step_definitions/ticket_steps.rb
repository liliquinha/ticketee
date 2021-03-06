Given /^"(.*?)" has created a ticket for this project:$/ do |email, table|
  table.hashes.each do |attributes|
    attributes = attributes.merge!(user: User.find_by_email!(email))
    @project.tickets.create!(attributes)
  end
end

When /^I attach the file "(.*?)" to "(.*?)"$/ do |path, field|
  attach_file(field, path)
end

Then /^I should see "(.*?)" within "(.*?)"$/ do |text, selector|
  page.should have_selector(selector, text: text)
end