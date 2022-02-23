Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants

  root to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
end
