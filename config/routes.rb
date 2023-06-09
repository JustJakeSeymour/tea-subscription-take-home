Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # namespace :api do
  #   namespace :v1 do
  #     namespace :customers do
  #       resources :subscriptions, only: [:create]
  #     end
  #   end
  # end

  post "/api/v1/customers/:id/subscriptions", to: 'api/v1/customers/subscriptions#create'
  patch "/api/v1/customers/:id/subscriptions/:id", to: 'api/v1/customers/subscriptions#update'
  get '/api/v1/customers/:id/subscriptions', to: 'api/v1/customers/subscriptions#index'
end
