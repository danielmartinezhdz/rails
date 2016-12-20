Rails.application.routes.draw do
  devise_for :usuarios, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  root 'welcome#index'

  post "/contacto", to: "welcome#contacto"
  get "/contacto", to: "welcome#contacto"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
