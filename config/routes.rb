Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  resources :authors

  root 'welcome#index'
end
