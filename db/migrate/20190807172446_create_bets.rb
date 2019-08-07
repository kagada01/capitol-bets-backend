class CreateBets < ActiveRecord::Migration[5.2]
  def change
    create_table :bets do |t|
      t.integer :match_id
      t.integer :bet_setter_id
      t.integer :bet_taker_id
      t.integer :money_line_odds
      t.integer :wager_amount
      t.integer :winner_id

      t.timestamps
    end
  end
end
