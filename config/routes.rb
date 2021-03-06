Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  root to: 'cocktails#index'

  resources :cocktails, only: %i[new create index show] do
    resources :doses, only: %i[new create]
  end

  resources :doses, only: :destroy
end
