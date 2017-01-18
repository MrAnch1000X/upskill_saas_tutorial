Rails.application.routes.draw do
    root to: 'pages#home'
    resources :users do
        resource :profile
    end
    
    devise_for :users, controllers: { registrations: 'users/registrations' }
    get 'about', to: 'pages#about'
    resources :contacts, only: :create
    get 'contact-us', to: 'contacts#new', as: 'new_contact'
end
