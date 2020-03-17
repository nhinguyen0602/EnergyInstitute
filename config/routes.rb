Rails.application.routes.draw do
  scope :api do
    scope :auth do 
      post 'sign_in', to: 'auth#sign_in'
      post 'sign_up', to: 'auth#sign_up'
    end 
    scope :enterprises do
      get '', to: 'enterprises#show'
      put '', to: 'enterprises#update'

      scope :energy_consumptions do
        get '', to: 'energy_consumptions#show'
        put '', to: 'energy_consumptions#update'
      end

      resources :products, only: %i[create show update destroy] do
        get 'productivities', to: 'productivities#index'
        put 'productivities', to: 'productivities#update'
      end
    end
  end
end
