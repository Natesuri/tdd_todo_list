require 'rails_helper'

# Capybara syntax for designating feature test
feature 'user creates todo' do
  # what the expecting passing behavior should be
  scenario 'successfully' do
    # tells Capybara to visit index.html
    sign_in

    # in helper todo_helper.rb
    create_todo 'Create Rails TDD proof of concept'

    # Sets a passing expectation, for there to be a list item containing the text
    # within an element with the class '.todos'
    expect(page).to display_todo('Create Rails TDD proof of concept')
  end
end
