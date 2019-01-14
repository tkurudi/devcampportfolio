Rails.application.routes.draw do
  resources :portfolio_items
    
  
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  resources :blogs
  
  root to: 'pages#home'
end
