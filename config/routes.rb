Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  get 'about', to: 'page#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles
end
