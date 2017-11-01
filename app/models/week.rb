class Week < ApplicationRecord
  has_many :games
  has_many :picks

  def new_game(away_team, home_team)
    self.games.create(away_team: away_team, home_team: home_team)
    self.save
  end

  def self.get_week_by_week_number(number)
    Week.all.find do |week|
      week.week_number == number
    end
  end


end
