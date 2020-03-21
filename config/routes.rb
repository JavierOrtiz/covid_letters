Rails.application.routes.draw do
  root "letters#index"
  resources :letters
end
