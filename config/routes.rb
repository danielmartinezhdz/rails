Rails.application.routes.draw do
  get 'menu/show'

  devise_for :usuarios, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  root 'welcome#index'

  get "contacto", to: "welcome#contacto"

  resources :menu

  resources :members

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
