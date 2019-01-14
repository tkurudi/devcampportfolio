Rails.application.routes.draw do
  resources :portfolio_items
    
  
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  resources :blogs do 
    member do
      get :toggle_status
    end
  end
  
  root to: 'pages#home'
end
