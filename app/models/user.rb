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

end
