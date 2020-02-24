Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  # Requires Redis on 127.0.0.1:6379
  # brew install redis
  # redis-server
  
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  
  post "/graphql", to: "graphql#execute"
  namespace 'api' do
    namespace 'v1' do
    resources :posts
    end
  end

  

  scope :module => "api/mysidekiq" do
    post '/api/mysidekiq/addjob', to: "jobs#add_job"
  end

  scope :module => "api/mysidekiq" do
    post '/api/mysidekiq/clear_stats', to: "jobs#clear_stats"
  end

end