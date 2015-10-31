class PokemonsController < ApplicationController
  def capture
    @pokemon =  Pokemon.find(params[:id])
    @pokemon.trainer_id = current_trainer.id
    @pokemon.save
    redirect_to root_path
  end
  def damage(health)
    @health = Pokemon.find(params[:health])
    @current_health = health - 10
    @health.save
  end
  def show
  end
end
