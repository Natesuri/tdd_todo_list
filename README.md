# README

This application is proof of concept and learning experience for TDD/BDD.

I'm following this Thoughtbot tutorial and will be documenting the TDD process here.

Errors while building feature based on this test: spec/features/user_creates_todo_spec.rb

```
Capybara::ElementNotFound:
      Unable to find link or button "Add a new todo"

Failure/Error: <%= link_to "Add a new todo", new_todo_path %>
   ActionView::Template::Error:
     undefined local variable or method `new_todo_path' for
     #<#<Class:0x00007fbabad34d58>:0x00007fbabd421998>

Failure/Error: click_on 'Add a new todo'
    AbstractController::ActionNotFound:
      The action 'new' could not be found for TodosController

Failure/Error: click_on 'Add a new todo'
     ActionController::UnknownFormat:
       TodosController#new is missing a template for this request format
       and variant.

       request.formats: ["text/html"]
       request.variant: []

Failure/Error: fill_in 'Title', with:
  'Create Rails TDD proof of concept'
     Capybara::ElementNotFound:
       Unable to find field "Title"

ActionView::Template::Error:
       First argument in form cannot contain nil or be empty

Failure/Error: <%= form_for @todo do |form| %>

     ActionView::Template::Error:
       undefined method `todos_path' for
       #<#<Class:0x00007f9f21085918>:0x00007f9f264b0b50>
       Did you mean?  root_path

Failure/Error: click_on 'Submit'
     Capybara::ElementNotFound:
       Unable to find link or button "Submit"

Failure/Error: click_on 'Submit'
     ActionController::RoutingError:
       No route matches [GET] "/todos"

 Failure/Error: <% @todos.each do |todo| %>
     ActionView::Template::Error:
       undefined method `each' for nil:NilClass

Failure/Error: expect(page).to have_css '.todos li', text:
    'Create Rails TDD proof of concept'
       expected to find css ".todos li" but there were no matches

Failure/Error: @todo.create(todo_params)

     NoMethodError:
       undefined method `create' for nil:NilClass
```

PT2 Revises above spec to force a user to sign in before allowing them to add
to their todo list.

```
Failure/Error: sign_in
     NameError:
       undefined local variable or method `sign_in' for #<RSpec::ExampleGroups::UserCreatesTodo:0x00007f9fca529358>

Failure/Error: click_on 'Add a new todo'

     Capybara::ElementNotFound:
       Unable to find link or button "Add a new todo"

Failure/Error: fill_in 'Email', with: "me@railsdev.com"

     Capybara::ElementNotFound:
       Unable to find field "Email"

Failure/Error: visit root_path

     NoMethodError:
       undefined method `authenticate' for #<TodosController:0x00007fa776c5eca0>

Failure/Error: unless signed_in?

     NoMethodError:
       undefined method `signed_in?' for #<TodosController:0x00007fe8f14622b0>


Failure/Error: redirect_to new_session_path

     NameError:
       undefined local variable or method `new_session_path' for #<TodosController:0x00007f848254a1d8>
       Did you mean?  new_todo_path

ActionController::RoutingError:
       uninitialized constant SessionsController

Failure/Error: visit root_path

     AbstractController::ActionNotFound:
       The action 'new' could not be found for SessionsController

Failure/Error: visit root_path

     ActionController::UnknownFormat:
       SessionsController#new is missing a template for this request format and variant.

       request.formats: ["text/html"]
       request.variant: []

Failure/Error: fill_in 'Email', with: "me@railsdev.com"

     Capybara::ElementNotFound:
       Unable to find field "Email"

Failure/Error: click_on "Sign in"

     Capybara::ElementNotFound:
       Unable to find link or button "Sign in"

Failure/Error: <%= form_for :session, url: session_path do |form| %>

     ActionView::Template::Error:
       undefined local variable or method `session_path' for #<#<Class:0x00007ff5c4e962d8>:0x00007ff5c5399708>
       Did you mean?  session

Failure/Error: click_on "Sign in"

     AbstractController::ActionNotFound:
       The action 'create' could not be found for SessionsController

Failure/Error: click_on 'Add a new todo'

     Capybara::ElementNotFound:
       Unable to find link or button "Add a new todo"

```

Errors driving testing for: spec/features/user_sees_own_todos_spec.rb

```
Failure/Error: expect(page).not_to have_css '.todos li', text: 'Learn React'
       expected not to find visible css ".todos li" with text "Learn React", found 1 match: "Learn React". Also found "Create Rails TDD proof of concept", which matched the selector but not all filters.

Added Database_Cleaner between these errors.

Failure/Error: expect(page).not_to have_css '.todos li', text: 'Learn React'
       expected not to find visible css ".todos li" with text "Learn React", found 1 match: "Learn React"

```

Errors during refactor to create current_user

```

Failure/Error: @todos = current_user.todos

     NameError:
       undefined local variable or method `current_user' for #<TodosController:0x00007f81258a9820>

Failure/Error: @todos = current_user.todos

     NoMethodError:
       undefined method `todos' for nil:NilClass

Failure/Error: User.new(current_email)

     NameError:
       uninitialized constant ApplicationController::User

Failure/Error: User.new(current_email)

     ArgumentError:
       wrong number of arguments (given 1, expected 0)

Failure/Error: @todos = current_user.todos

     NoMethodError:
       undefined method `todos' for #<User:0x00007f8058ed2878>

Failure/Error: <% @todos.each do |todo| %>

     ActionView::Template::Error:
       undefined method `each' for nil:NilClass

 Failure/Error: current_user.signed_in?

     NoMethodError:
       undefined method `signed_in?' for #<User:0x00007f83d6251500 @email=nil>



```
