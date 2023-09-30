Rails.application.routes.draw do
  root to: "public/items#index"
  get "public/homes/about" => "public/homes#about", as: "about"
  namespace :public do
    get 'cart_items/public/orders'
  end
  devise_for :customers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: "public/sessions"
  }

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  resources :items, only: [:index, :update, :destroy, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
