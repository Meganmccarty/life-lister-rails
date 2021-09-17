class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include ActionController::Cookies

    def fallback_index_html
        render file: 'public/index.html'
    end
end
