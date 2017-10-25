class Week < ApplicationRecord
  has_many :games
  has_many :picks

  def new_game(away_team, home_team)
    Game.create(away_team: away_team, home_team: home_team, week: self)
  end

end
