Rails.application.routes.draw do
  resources :comments
  resources :pictures

  # This route sends requests to our naked url to the *cool* action in the *gif* controller.
  root to: 'pictures#index'

  get '/edit' => 'pictures#edit'

  # These routes will be for signup. The first renders a form in the browse, the second will
  # receive the form and create a user in our database using the data given to us by the user.
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # these routes are for showing users a login form, logging them in, and logging them out.
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
