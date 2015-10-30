class PokemonController < ApplicationController
  def capture(pokemon_id)
    pokemon_trainer_id = current_trainer.id
    pokemon =  Pokemon.find(params[:pokemon_id])
    pokemon.update_attribute(:trainer_id, pokemon_trainer_id)
  end
  def damage(health)
    current_health = health - 10
    health =  Pokemon.find(params[:health])
    health.update_attribute(:health, current_health)
  end
  def show
  end
end
