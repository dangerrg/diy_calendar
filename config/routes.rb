Rails.application.routes.draw do
  resources :meetings
  get "home/index"
  root to: "home#index"
end
