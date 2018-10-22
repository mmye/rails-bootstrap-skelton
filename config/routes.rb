Rails.application.routes.draw do
  root 'products#index'
  resources :products do
    collection do
      put :discontinue
    end
  end
  resources :product_imports
end
