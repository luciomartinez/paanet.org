Rails.application.routes.draw do
  get 'contact/index'
  match "/contact", to: "contact#index", via: 'get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'home/index'
end
