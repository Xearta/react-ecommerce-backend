if Rails.env === 'production' 
  Rails.application.config.session_store :cookie_store, key: '_react-ecommerce-app', domain: 'react-ecommerce-app-json-api'
else
  Rails.application.config.session_store :cookie_store, key: '_react-ecommerce-app'
end