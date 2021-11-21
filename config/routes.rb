Rails.application.routes.draw do
  get 'line_bot/callback'
  resources :tasks
  resources :callback
  root "tasks#index"
  post 'line_bot/callback' => 'line_bot#callback'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
