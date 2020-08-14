Rails.application.routes.draw do
  # get 'doses/description'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # creating manualy to learn more!!!
  # root to: "cocktails#index"
  # get "cocktails/new", to: "cocktails#new"
  # get "cocktails/:id", to: "cocktails#show", as: :cocktail_show
  # post "cocktails", to: "cocktails#create"
  # # doses
  # resources :cocktails do
  #   resources :doses, only: [ :new, :create, :destroy ]
  # end
  root to: "cocktails#index"
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end

