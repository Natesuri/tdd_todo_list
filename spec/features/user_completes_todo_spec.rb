require 'rails_helper'

# Capybara syntax for designating feature test
feature 'user completes todo' do
  # what the expecting passing behavior should be
  scenario 'successfully' do
    # tells Capybara to visit index.html
    sign_in

    create_todo 'Create Rails TDD proof of concept'

    click_on 'Done'

    # Sets a passing expectation, for there to be a list item containing the text
    # within an element with the class '.todos'
    expect(page).to display_complete_todo 'Create Rails TDD proof of concept'
  end
end
