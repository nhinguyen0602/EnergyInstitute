Rails.application.routes.draw do
  scope :api do
    namespace :admin do
      resources :enterprises, only: %i[index]
    end
    scope :auth do 
      post 'sign_in', to: 'auth#sign_in'
      post 'sign_up', to: 'auth#sign_up'
    end 
    scope :enterprise do
      get '', to: 'enterprises#show'
      put '', to: 'enterprises#update'

      scope :energy_consumptions do
        get '', to: 'energy_consumptions#show'
        put '', to: 'energy_consumptions#update'
        delete ':id', to: 'energy_consumptions#destroy'
      end

      scope :greenhouse_emissions do
        get '/:id', to: 'greenhouse_emissions#show'
        get '', to: 'greenhouse_emissions#index'
        put '', to: 'greenhouse_emissions#update_or_create'
        delete '/:id', to: 'greenhouse_emissions#destroy'
      end

      resources :products, only: %i[index create show update destroy] do
        get 'productivities', to: 'productivities#show'
        put 'productivities', to: 'productivities#update'
        delete 'productivities/:id', to: 'productivities#destroy'
      end
    end

    resources :subsectors, only: %i[index show] do
      resources :sectors, only: %i[index show] do
        resources :emission_factors, only: %i[index update]
        resources :climate_changes, param: :year_of_investigation, only: %i[index show]
      end
    end

    resources :provinces, only: %i[index show] do
      resources :districts, only: %i[index show] do
        resources :wards, only: %i[index show]
      end
    end

    resources :emission_reasons, only: %i[index show]
  end
end
