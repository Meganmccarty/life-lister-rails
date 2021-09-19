class ApplicationController < ActionController::Base
    include ActionController::Cookies
    # skip_before_action :verify_authenticity_token
    # protect_from_forgery with: :exception, prepend: true
    before_action :set_csrf_cookie

    def fallback_index_html
        render file: 'public/index.html'
    end

    private

    def set_csrf_cookie
        cookies["CSRF-TOKEN"] = form_authenticity_token
    end
end
