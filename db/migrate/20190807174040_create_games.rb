class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :game_date
      t.string :game_location
      t.string :game_venue
      t.string :suggested_odds
      t.string :game_winner
      t.string :game_team1
      t.string :game_team2
      t.boolean :sport_event_status_live
      t.boolean :sport_event_status_ended

      t.timestamps
    end
  end
end
