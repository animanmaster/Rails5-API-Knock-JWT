Rails.application.routes.draw do
  root 'home#index'
  get '/v1/auth' => 'home#auth'
  post '/v1/user_token' => 'user_token#create'

  get    '/v1/users'          => 'users#index'
  get    '/v1/users/current'  => 'users#current'
  post   '/v1/users/create'   => 'users#create'
  patch  '/v1/user/:id'       => 'users#update'
  delete '/v1/user/:id'       => 'users#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
