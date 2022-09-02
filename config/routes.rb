Rails.application.routes.draw do
 
  resources :scientists
  resources :missions, only: [:create]
  resources :planets, only: [:index]
end
