Rails.application.routes.draw do
  resources :heroinepowers
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show, :new, :create] 
end
