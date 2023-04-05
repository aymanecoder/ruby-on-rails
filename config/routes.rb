Rails.application.routes.draw do
  # get 'pages/home'
  # get 'pages/aide'
  # get 'pages/contact'
  root 'pages#home'
  get 'aide'=>'pages#aide'
  get 'contact'=>'pages#contact'
  get 'inscription'=>'user#new'


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
