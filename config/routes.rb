Rails.application.routes.draw do
    resources :records, only: [:index, :create, :update, :destroy]
    resources :taxons, only: [:index]
    resources :users, only: [:update]
    get "/users/:username", to: "users#show"
    post "/signup", to: "users#create"
    get "/profile", to: "users#display"
    post "/login", to: "sessions#create"
    delete "logout", to: "sessions#destroy"
    # get '*other', to: 'welcome#index'

    get '*path', to: "application#fallback_index_html", constraints: ->(request) do
        !request.xhr? && request.format.html?
    end
end
