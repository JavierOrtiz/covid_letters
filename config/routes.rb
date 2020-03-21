Rails.application.routes.draw do
  root "letters#index"
  resources :letters, only: [:index, :new, :create, :show]
end
