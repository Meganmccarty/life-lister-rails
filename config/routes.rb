Rails.application.routes.draw do
    resources :records, only: [:index, :create, :update, :destroy]
    resources :taxons, only: [:index]
    post "/signup", to: "users#create"
    get "/profile", to: "users#show"
    post "/login", to: "sessions#create"
    delete "logout", to: "sessions#destroy"
end
