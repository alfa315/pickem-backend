class User < ApplicationRecord
  has_many :picks

  validates :name, uniqueness: {case_sensitive: false}

  def week_picks(num)
    self.picks.select do |pick|
      pick.week.week_number == num
    end
  end

  def games_picked
    self.picks.map do |pick|
      pick.game_id
    end
  end

  def wins
    self.picks.select do |pick|
      pick.was_right
    end.size
  end


  def wins_by_week(week_num)
    self.week_picks(week_num).select do |pick|
      Game.find(pick.game_id).winning_team.try(:id) == pick.guess_id
    end.length
  end

end
