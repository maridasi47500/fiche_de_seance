Rails.application.routes.draw do
  resources :fiche_de_seances
  root to: "fiche_de_seances#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
