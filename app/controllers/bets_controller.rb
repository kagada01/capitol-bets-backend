class BetsController < ApplicationController

    def index
        bets = Bet.all
              render json: bets.to_json(
              :except => [:created_at, :updated_at ]
            )
      end

      def create
        render json: Bet.create(new_bet)
      end

      private

      def new_bet
        params.require(:bet).permit(:game_id, :user_id, :bet_taker_id, :money_line_odds, :wager_amount, :winner_id) 
      end 



end