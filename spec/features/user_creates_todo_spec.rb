require 'rails_helper'

# Capybara syntax for designating feature test
feature 'user creates todo' do
  # what the expecting passing behavior should be
  scenario 'successfully' do
    # tells Capybara to visit index.html
    sign_in

    #  to click on a link or button with the text 'Add a new todo'
    click_on 'Add a new todo'
    #  to fill in a form with a text field :title and the text to fill it with
    fill_in 'Title', with: 'Create Rails TDD proof of concept'
    #  to click on a link or button with the text 'Submit'
    click_on 'Submit'

    # Sets a passing expectation, for there to be a list item containing the text
    # within an element with the class '.todos'
    expect(page).to have_css '.todos li', text: 'Create Rails TDD proof of concept'
  end
end
