require 'byebug'

class BetsController < ApplicationController

    def index
        bets = Bet.all
              render json: bets.to_json(:include => {
                    :game => {:only => [:id, :game_date, :game_team1, :game_team2, :suggested_odds, :game_venue]}
                },  :except => [:created_at, :updated_at ])
      end
    
      def create
        @bet = Bet.create(new_bet)
        render json: @bet.to_json(:include => {
          :game => {:only => [:id, :game_date, :game_team1, :game_team2, :suggested_odds, :game_venue]}
      },  :except => [:created_at, :updated_at ])
      end

      def update
        # byebug
        @bet = Bet.find(params[:id])
        @bet.update(new_bet)
        render json: @bet.to_json(:include => {
          :game => {:only => [:id, :game_date, :game_team1, :game_team2, :suggested_odds, :game_venue]}
      },  :except => [:created_at, :updated_at ])
      end

      def show
        bet = Bet.find(params[:id])
        render json: bet.to_json(:include => {
            :game => {:only => [:id, :game_date, :game_team1, :game_team2, :suggested_odds, :game_venue]}
                },  :except => [:created_at, :updated_at ])

      end

      private

      def new_bet
        params.require(:bet).permit(:user_id, :game_id, :bet_taker_id, :money_line_odds, :wager_amount, :winner_id, :payout, :plus_minus) 
      end 



end