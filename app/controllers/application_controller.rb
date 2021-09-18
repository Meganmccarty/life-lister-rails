class ApplicationController < ActionController::Base
    include ActionController::Cookies
    # skip_before_action :verify_authenticity_token
    protect_from_forgery with: :exception, :prepend true

    def fallback_index_html
        render file: 'public/index.html'
    end
end
