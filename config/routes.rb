Rails.application.routes.draw do
  
  devise_for :users
  root 'home#index'
  get 'home/index'
  get 'contacts/new'
  get 'contacts/create'

  get 'client' => 'home#client'
  match 'contacts',     to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]

  

end
