class Team < ApplicationRecord
  has_many :away_games, class_name: 'Game', foreign_key: 'away_team_id'
  has_many :home_games, class_name: 'Game', foreign_key: 'home_team_id'

  def wins
    home_wins = home_games.select do |game|
      game.winning_team == self
    end.length

    away_wins = away_games.select do |game|
      game.winning_team == self
    end.length

    home_wins + away_wins
  end

  def games_played
    away_games_played = self.away_games.select do |game|
      game.winning_team != nil
    end.length
    home_games_played = self.home_games.select do |game|
      game.winning_team != nil
    end.length
    home_games_played + away_games_played
  end

  def record
    [self.wins, self.games_played - self.wins]
  end

end
