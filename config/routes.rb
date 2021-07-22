Rails.application.routes.draw do
  devise_for :users,
              controllers: {
                sessions: 'users/sessions',
                registrations: 'users/registrations'
              }

  get '/account', to: 'accounts#show'

  resources :fights
  resources :boxers
  resources :gyms

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
