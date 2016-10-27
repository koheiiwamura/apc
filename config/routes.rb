Rails.application.routes.draw do
  root 'top#index'
  get 'sales/search' => 'sales/search#index'
  resources :sales
end
