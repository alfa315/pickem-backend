Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teams, only: [:index, :update, :create, :show]
      resources :users, only: [:index, :update, :create, :show]
    end
  end
end
