Rails.application.routes.draw do
  resources :zipcodedatabases
  get 'pages/about'
  get 'pages/contact'

 root 'zipcodedatabases#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
