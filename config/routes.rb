Rails.application.routes.draw do
  get 'rooms/show'
  devise_for :users
  root to: 'rooms#show'

  resources :rooms, only: %i[show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
