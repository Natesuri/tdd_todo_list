require 'rails_helper'

feature 'user sees own todo' do
  scenario "doesn't see other's todos" do
    Todo.create!(title: 'Learn React', email: 'me@jsdev.com')

    sign_in_as 'me@railsdev.com'

    expect(page).not_to display_todo('Learn React')
  end
end
