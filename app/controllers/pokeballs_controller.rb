class PokeballsController < ApplicationController
  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @trainer = Trainer.find(params[:pokeball][:trainer_id]) # Récupérer le dresseur sélectionné
    @pokeball = Pokeball.new(pokeball_params)
    @pokeball.pokemon = @pokemon
    @pokeball.trainer = @trainer

    if @pokeball.save
      redirect_to trainer_path(@trainer), notice: "#{@pokemon.name} a été capturé avec succès !"
    else
      redirect_to pokemon_path(@pokemon), alert: "Erreur lors de la capture du Pokémon."
    end
  end

  private

  def pokeball_params
    params.require(:pokeball).permit(:caught_on, :location)
  end
end
