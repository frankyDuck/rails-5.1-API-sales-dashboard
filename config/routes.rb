require 'api_constraints'

Rails.application.routes.draw do
  
  namespace :api, defaults: { format: :json } do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: :true) do
      resources :companies do
        resources :sales
      end  
    end	
	end

end
