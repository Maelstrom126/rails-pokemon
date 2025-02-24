Rails.application.routes.draw do
  root to: "pokemons#index" # Page d'accueil sur le Pokédex

  resources :pokemons, only: [:index, :show] do
    resources :pokeballs, only: [:create] # Capture d’un Pokémon
  end

  resources :trainers, only: [:index, :show] # Routes pour les dresseurs
end
