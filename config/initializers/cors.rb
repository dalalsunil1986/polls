Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ENV.fetch('ALLOWED_CORS_ORIGIN')
    resource '*',
    headers: :any,
    expose: ['Authorization'],
    methods: [:get, :post, :options, :delete, :patch, :put]
  end
end