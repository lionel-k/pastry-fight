# frozen_string_literal: true

When('I go to the homepage') do
  visit root_path
end

Then('I should see the welcome message') do
  expect(page).to have_content('Toutes les batailles')
end
