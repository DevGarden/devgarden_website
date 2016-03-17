Rails.application.routes.draw do
 
  resources :deployments
  resources :projects
  resources :clients
  
  mount Upmin::Engine => '/admin'

  mount API => '/'

  mount GrapeSwaggerRails::Engine => '/swagger'
  
  devise_for :users, :controllers => { registrations: 'registrations' }

  devise_scope :user do 
    authenticated :user do
      root :to =>  'pages#about'
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  get 'home/index'
  get 'contacts/new'
  get 'contacts/create'
  get 'contact' => 'contacts#new'

  get 'client' => 'home#client'
  match '/contacts', to: 'contacts#new', via: ‘get’
  resources "contacts", only: [:new, :create]

  

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/devel/emails"
  end


end
