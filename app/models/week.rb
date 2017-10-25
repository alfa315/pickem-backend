class Week < ApplicationRecord
  has_many :games
  has_many :picks

  def new_game(away_team, home_team)
    Game.create(away_team: away_team, home_team: home_team, week: self)
  end

  def self.get_week_by_week_number(number)
    Week.all.find do |week|
      week.week_number == number
    end
  end


end
