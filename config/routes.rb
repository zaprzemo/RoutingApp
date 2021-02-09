Rails.application.routes.draw do
  namespace :admin do
	get 'dashboard/main'
	get 'dashboard/user'
	get 'dashboard/blog'
  end
  
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'all/contacts/regarding/my/company', to: 'pages#contact', as: 'contact'
  
  resources :blogs
  get 'posts/*missing', to: 'posts#missing'
  resources :posts

  get 'query/:something', to: 'pages#something'


  root to: 'pages#home'
end
