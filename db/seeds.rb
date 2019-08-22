# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'byebug'
require 'rest-client'
require 'JSON'
require 'Date'
# require_relative('../app/models/game.rb')

Game.destroy_all
User.destroy_all
Bet.destroy_all

# todays_date = `#{Date.today.to_s.gsub("-", "/")}`
# mlb_key_full = `http://api.sportradar.us/mlb/trial/v6.5/en/games/#{todays_date}/schedule.json?api_key=jjrnwurup9jmgn8j9ryqzjj5`
# mlb_key = "jjrnwurup9jmgn8j9ryqzjj5"
# mlb_api = `http://api.sportradar.us/mlb/trial/v6.5/en/games/#{todays_date}/schedule.json?api_key=#{mlb_key}`
# mlb_api_response = RestClient.get(mlb_api)
# mlb_api_parsed = JSON.parse(mlb_api_response)

game1 = Game.create(game_date: Date.new(2019,8,22), game_location: "St. Louis", game_venue: "Busch Stadium", suggested_odds: "+210", game_winner: "Colorado Rockies", game_team1: "St. Louis Cardinals", game_team2: "Colorado Rockies", sport_event_status_live: false, sport_event_status_ended: true)

game2 = Game.create(game_date: Date.new(2019,8,22), game_location: "Pittsburgh, PA", game_venue: "PNC Park", suggested_odds: "-150",  game_winner: "Pittsburgh Pirates", game_team1: "Pittsburgh Pirates", game_team2: "Washington Nationals", sport_event_status_live: true, sport_event_status_ended: false)

game3 = Game.create(game_date: Date.new(2019,8,22), game_location: "Atlanta, GA", game_venue: "SunTrust Park", suggested_odds: "+115",  game_winner: "Atlanta Braves", game_team1: "Atlanta Braves", game_team2: "Miami Marlins", sport_event_status_live: true, sport_event_status_ended: false)

game4 = Game.create(game_date: Date.new(2019,8,22), game_location: "New York City, NY", game_venue: "Citi Field", suggested_odds: "-210",  game_winner: "Toronto Blue Jays", game_team1: "New York Mets", game_team2: "Cleveland Indians", sport_event_status_live: false, sport_event_status_ended: false)

game5 = Game.create(game_date: Date.new(2019,8,22), game_location: "Baltimore, MD", game_venue: "Camden Yards", suggested_odds: "-110",  game_winner: "Tampa Bay Rays", game_team1: "Baltimore Orioles", game_team2: "Tampa Bay Rays", sport_event_status_live: false, sport_event_status_ended: false)

game6 = Game.create(game_date: Date.new(2019,8,22), game_location: "Chicago, IL", game_venue: "Guaranteed Rate Field", suggested_odds: "-180",  game_winner: "Chicago White Sox", game_team1: "Chicago White Sox", game_team2: "Texas Rangers", sport_event_status_live: false, sport_event_status_ended: false)

game7 = Game.create(game_date: Date.new(2019,8,22), game_location: "Houston, TX", game_venue: "Minute Maid Park", suggested_odds: "-110",  game_winner: "Houston Astros", game_team1: "Houston Astros", game_team2: "Detroit Tigers", sport_event_status_live: false, sport_event_status_ended: false)

game8 = Game.create(game_date: Date.new(2019,8,22), game_location: "Oakland, CA", game_venue: "Oakland-Alameda County Coliseum", suggested_odds: "-110",  game_winner: "Oakland Athletics", game_team1: "Oakland Athletics", game_team2: "New York Yankees", sport_event_status_live: false, sport_event_status_ended: false)

game9 = Game.create(game_date: Date.new(2019,8,22), game_location: "Los Angeles, CA", game_venue: "Dodger Stadium", suggested_odds: "-140",  game_winner: "Toronto Blue Jays", game_team1: "Los Angeles Dodgers", game_team2: "Toronto Blue Jays", sport_event_status_live: false, sport_event_status_ended: false)


# def mlb_games(mlb_api_parsed)
#         mlb_api_parsed["games"].map do |game| 
            
#             venue_name = game["venue"]["name"]
#             game_location = game["venue"]["city"]
#             home_team = game["home"]["name"]
#             away_team = game["away"]["name"]
#             game_date = mlb_api_parsed["date"]
#             # byebug
#             Game.create!(game_date: game_date,
#                  game_location: game_location, 
#                  game_venue: venue_name, 
#                  game_winner: "", 
#                  game_team1: home_team, 
#                  game_team2: away_team, 
#                  sport_event_status_live: false,
#                  sport_event_status_ended: true)
  
#         end
# end

# mlb_games(mlb_api_parsed)

# def get_game_time_est(mlb_api_parsed)
#     mlb_api_parsed["games"].map |game| do 
#         game_time = game["scheduled"]
#         date_array = game_time.split("T")
#         time_array = date_array[1].split("+")
#         official_time = time_array[0]
#         official_time
# end


user1 = User.create!(username: "kagada01", password: "1234", email: "dankagan7@gmail.com", cash: 500)
user2 = User.create!(username: "dankagan", password: "1234", email: "kagada01@gettysburg.edu", cash: 500)


bet1 = Bet.create!(game_id: game2.id, user_id: user1.id, payout: 500, plus_minus: "-", bet_taker_id: user2.id, money_line_odds: 110, wager_amount: 75, winner_id: user1.id)
bet2 = Bet.create!(game_id: game4.id, user_id: user2.id, payout: 500, plus_minus: "-", bet_taker_id: user1.id, money_line_odds: 250, wager_amount: 25, winner_id: user2.id)

# Calling function to populate upcoming game cards
