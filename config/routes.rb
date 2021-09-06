Rails.application.routes.draw do
    resources :records, only: [:index, :create, :update, :destroy]
    resources :taxons, only: [:index]
    resources :users, only: [:create]
end
