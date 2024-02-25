# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins 'http://localhost:3000' # Frontend URL
#     resource '*',
#       headers: :any,
#       methods: [:get, :post, :put, :patch, :delete],
#       credentials: true
#   end
# end

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :patch, :put]
  end
end
