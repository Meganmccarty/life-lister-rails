class ApplicationController < ActionController::Base
    include ActionController::Cookies

    def fallback_index_html
        render file: 'public/index.html'
    end
end
