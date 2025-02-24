class TrainersController < ApplicationController
  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokemons = @trainer.pokemons # Récupérer les Pokémon du dresseur
  end
end
