Rails.application.routes.draw do
  resources :fights
  resources :coaches
  resources :boxers
  resources :gyms

  post '/boxers/new' => 'boxers#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
