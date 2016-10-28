Rails.application.routes.draw do
  root 'top#index'
  get 'sales/search' => 'sales/search#index'
  resources :sales
  resources :users, only: :index
end
