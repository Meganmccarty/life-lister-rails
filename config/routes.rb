Rails.application.routes.draw do
    scope '/api' do
        resources :records, only: [:index, :create, :update, :destroy]
        resources :taxons, only: [:index]
        resources :users, only: [:update]
        get "/profile", to: "users#display"
    end
        
    get "/users/:username", to: "users#show"
    post "/signup", to: "users#create"
    post "/login", to: "sessions#create"
    delete "logout", to: "sessions#destroy"
    
    if Rails.env == "production"
        get '*path', to: "application#fallback_index_html", constraints: ->(request) do
            !request.xhr? && request.format.html?
        end
    end
end
