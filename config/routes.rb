Rails.application.routes.draw do
  devise_for :users
  root to: 'pubs#home'


  resources :pubs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
