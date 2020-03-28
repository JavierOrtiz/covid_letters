Rails.application.routes.draw do
  devise_for :mailmen
  root "letters#index"
  resources :letters, only: [:index, :new, :create, :show]

  namespace :mailman do
    root "dashboard#show"
    resources :letters
  end
end
