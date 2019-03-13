Rails.application.routes.draw do
  root to: "todos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :todos, only: [:index, :new, :create] do
    resource :completion, only: [:create, :destroy]
  end

  resource :session, only: [:new, :create]
end
