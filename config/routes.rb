Rails.application.routes.draw do
  resources :users, only: [:create, :destroy]
  post '/notify', to: 'notification#notify'
end
