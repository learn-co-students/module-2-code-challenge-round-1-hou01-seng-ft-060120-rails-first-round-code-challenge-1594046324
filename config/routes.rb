Rails.application.routes.draw do
  resources :powers, only: [:index, :show ]
  resources :heroines
  get 'heroines/multiple', to: 'heroines#multiple'
  post '/heroines/multiple', to: 'heroines#multiple'
end
