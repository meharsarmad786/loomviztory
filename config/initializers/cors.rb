# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://127.0.0.1:3000/'  # Adjust this to allow requests from specific domains, or use '*' for all domains
  
      resource '*',  # This defines which paths are accessible, '*' all paths are accessible
        headers: :any,  # Allows all headers
        methods: %i[get post put patch delete options head],  # Defines allowed HTTP request methods
        expose: ['Authorization'],  # Exposes specific headers (optional)
        max_age: 600  # Cache the preflight requests for 10 minutes (optional)
    end
  end
  