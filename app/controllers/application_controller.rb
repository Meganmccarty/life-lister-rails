class ApplicationController < ActionController::Base
    include ActionController::Cookies
    after_action :set_csrf_cookie

    def fallback_index_html
        if Rails.env == "production"
            render file: 'public/index.html'
        end
    end

    private

    def set_csrf_cookie
        if Rails.env == "development"
            cookies["CSRF-TOKEN"] = {
                value: form_authenticity_token
            }
        elsif Rails.env == "production"
            cookies["CSRF-TOKEN"] = {
                value: form_authenticity_token,
                secure: true,
                same_site: :strict,
                domain: 'life-lister.herokuapp.com'
            }
        end
    end
end
