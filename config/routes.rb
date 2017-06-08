Rails.application.routes.draw do
  get 'contact/index'
  post "contact/index" => "contact#submit"
  match "/contacto", to: "contact#index", via: 'get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'home/index'
end
