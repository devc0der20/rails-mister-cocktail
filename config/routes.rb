Rails.application.routes.draw do
  # get 'doses/description'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # creating manualy to learn more!!!
  get "cocktails", to: "cocktails#index"
  get "cocktails/new", to: "cocktails#new"
  get "cocktails/:id", to: "cocktails#show", as: :cocktail_show
  post "cocktails", to: "cocktails#create"
  # doses
  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
end

# new_cocktail_dose GET    /cocktails/:cocktail_id/doses/new
# cocktail_doses POST   /cocktails/:cocktail_id/doses