Rails.application.routes.draw do
  root 'owners#index'
  resources :owner, only: [] do
    resources :puppies, only: [:new, :create, :show]
  end

  resources :puppies, only: [:show] do
    resources :toys, only: [:create]
    resources :appointments, only: [:create]
  end
end
