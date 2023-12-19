Rails.application.routes.draw do
  resources :dummies, only: [:index, :new, :create] do
    get :some_method, on: :member
  end
end
