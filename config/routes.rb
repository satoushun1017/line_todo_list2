Rails.application.routes.draw do
  get 'line_bot/callback'
  resources :tasks
  resources :callbacks
  root "tasks#index"

  post "/callback" => "line_bot_#callback"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
