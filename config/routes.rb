Rails.application.routes.draw do
  resources :dummies, only: [:new, :create]
end
