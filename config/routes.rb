Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teams, only: [:index, :update, :create, :show]
      resources :users, only: [:index, :update, :create, :show] do
        resources :picks
      end
      resources :games, only: [:index, :update, :create, :show]
      resources :picks, only: [:index, :update, :create, :show]
      resources :weeks, only: [:index, :update, :create, :show]
    end
  end
end
