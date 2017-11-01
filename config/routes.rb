require 'api_constraints'

Rails.application.routes.draw do
  mount_devise_token_auth_for 'Api::User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json}, constraints: {subdomain: 'api'}, path: '/' do
    namespace :v1, path: '/', constraints: ApiConstraints.new(version: 1, default: true) do
      scope module: :billing do
        resources :credits, only: [:index]
        # resources :debits
      end
    end
  end
end

