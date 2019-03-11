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
