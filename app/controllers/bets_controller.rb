class BetsController < ApplicationController

    def index
        bets = Bet.all
              render json: bets.to_json(
              :except => [:created_at, :updated_at ]
            )
      end


end