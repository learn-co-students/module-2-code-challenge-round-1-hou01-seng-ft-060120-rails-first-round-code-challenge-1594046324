Rails.application.routes.draw do
  #resources :heroinepowers, only: [:show]
  #resources :powers, only: [:index]
  resources :powers
  #resources :heroines, only: [:index] 
  resources :heroines
end
