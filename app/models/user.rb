class User < ApplicationRecord
  has_many :picks

  def week_picks(num)
    self.picks.select do |pick|
      pick.game.week_id == num
    end
  end

  def games_picked
    self.picks.map do |pick|
      pick.game_id
    end
  end

end
