Rails.application.routes.draw do
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/articles', to: 'articles#index'
  resources :articles, only: [:index, :show]
  #get '/posts', to:'posts#index'
  resources :photos, only: [:index]
end
