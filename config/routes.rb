SampleApp::Application.routes.draw do
  resources :portfolios
  resources :videos
  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :users do
    resources :portfolios
  end

  resources :users	
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/videos',  to: 'videos#index',         via: 'get'
  match '/portfolio', to: 'portfolios#show',     via: 'get'
end
