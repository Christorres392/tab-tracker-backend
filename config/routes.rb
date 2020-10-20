Rails.application.routes.draw do
  resources :references
  resources :issues
  resources :projects
  resources :users
  post '/login', to: 'auth#create'
  delete '/logout', to: 'auth#destroy'
  get '/logged_in', to: 'application#logged_in?'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
