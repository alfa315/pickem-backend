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

  def self.user_wins_by_week
    live_weeks = Week.all.select do |week|
      week.week_number > 7
    end
    weeks_array = live_weeks.map do |week|
      new_hash = {}
      new_hash[week.week_number] = User.all.map do |user|
        userHash = {}
        userHash[user.name] = user.wins_by_week(week.week_number)
        userHash
      end
      # {1: [{'will': 1}, {'al': 2}], 2: [{'will': 2}, {'al': 5}] ... }
      new_hash
    end
    weeks_array.each_with_object({}) do |week, hsh|
      hsh[week.keys[0]] = week[week.keys[0]]
    end
  end


end
