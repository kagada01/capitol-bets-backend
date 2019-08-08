require "byebug"

class GamesController < ApplicationController
  
  def index
    games = Game.all
          render json: games.to_json(
          :except => [:created_at, :updated_at ]
        )
  end

end
