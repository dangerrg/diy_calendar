Rails.application.routes.draw do
  root to: "home#index"
  get "home/index"
  get "home/mymonth"
  get "home/myweek"
  get "home/myday"
  get "home/mycustom"

  resources :meetings
end
