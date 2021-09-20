class ApplicationController < ActionController::Base
    include ActionController::Cookies
    # skip_before_action :verify_authenticity_token
    # protect_from_forgery with: :exception, prepend: true
    after_action :set_csrf_cookie

    def fallback_index_html
        render file: 'public/index.html'
    end

    private

    def set_csrf_cookie
        cookies["CSRF-TOKEN"] = {
            value: form_authenticity_token,
            expires: 30.minutes.from_now,
            secure: true,
            same_site: :strict,
            domain: 'https://life-lister.herokuapp.com'
        }
    end
end
