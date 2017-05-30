Rails.application.routes.draw do
  resources :portfolios, except: [:show]


  get 'portfolio', to: 'portfolios#index', as: 'portfolio_index'
  get 'project/:id', to: 'portfolios#show', as: 'portfolio_show'

  root to: 'pages#home'
  get 'pages/home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
