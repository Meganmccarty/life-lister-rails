if Rails.env == 'production' 
    Rails.application.config.session_store :cookie_store, key: '_lifelist_app_session', same_site: :none, secure: true, domain: 'frozen-hollows-38826.herokuapp.com'
else
    Rails.application.config.session_store :cookie_store, key: '_myapp' 
end