Rails.application.routes.draw do
  resources :meows, only: [:index, :show, :create, :destroy]
  resources :follows, only: [:index, :show, :create, :destroy]
  resources :cats, only: [:index, :show, :update, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

