Rails.application.routes.draw do
  #end
  devise_for :users #, controllers: {registrations: "registrations"}

  authenticated :user do
    root 'users#index'
  end

  devise_scope :user do
    unauthenticated :user do
      get "/" => "devise/sessions#new"
    end
  end
  resources :conversations do
      resources :messages
    end

end
