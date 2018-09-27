Rails.application.routes.draw do
  get 'users/new'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'sessions/new'
  get 'sessions/create'
  root 'pages#home'


  # get 'pages/home'
  get 'pages/help'
  get 'pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
