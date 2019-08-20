class BetsController < ApplicationController

    def index
        bets = Bet.all
              render json: bets.to_json(:include => {
                    :game => {:only => [:id, :game_date, :game_team1, :game_team2, :suggested_odds, :game_venue]}
                },  :except => [:created_at, :updated_at ])
      end
    
      def create
        render json: Bet.create(new_bet)
      end

      private

      def new_bet
        params.require(:bet).permit(:user_id, :game_id, :bet_taker_id, :money_line_odds, :wager_amount, :winner_id, :payout) 
      end 



end