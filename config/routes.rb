Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teams, only: [:index, :update, :create, :show]
      resources :users, only: [:index, :update, :create, :show] do
        resources :picks
      end
      resources :games, only: [:index, :update, :create, :show]
      resources :weeks, only: [:index, :update, :create, :show]
    end
  end
  get '/api/v1/users/:id/picks/week/:week_number', to: 'api/v1/users#show_week'

  get '/api/v1/weeks/:id/users/:user_id', to: 'api/v1/weeks#show_picks'
end
