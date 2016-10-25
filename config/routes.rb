Rails.application.routes.draw do
  root 'top#index'
  resources :sales
end
