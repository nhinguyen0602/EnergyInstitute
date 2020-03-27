Rails.application.routes.draw do
  scope :api do
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
        get '', to: 'greenhouse_emissions#index'
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
      end
    end

    resources :provinces, only: %i[index show] do
      resources :districts, only: %i[index show] do
        resources :wards, only: %i[index show]
      end
    end
  end
end
