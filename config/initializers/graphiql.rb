if Rails.env.development? && ENV['AUTH_TOKEN']
  GraphiQL::Rails.config.headers['Authorization'] = -> (_ctx) {
    "Bearer #{ENV['AUTH_TOKEN']}"
  }
end
