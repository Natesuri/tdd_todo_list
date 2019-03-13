module Features
  def create_todo(todo_title)
    #  to click on a link or button with the text 'Add a new todo'
    click_on 'Add a new todo'
    #  to fill in a form with a text field :title and the text to fill it with
    fill_in 'Title', with: todo_title
    #  to click on a link or button with the text 'Submit'
    click_on 'Submit'
  end

  def display_todo(todo_title)
    have_css '.todos li', text: todo_title
  end

  def display_complete_todo(todo_title)
    have_css '.todos li.completed', text: todo_title
  end
end
