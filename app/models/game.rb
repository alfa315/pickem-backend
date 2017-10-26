class Game < ApplicationRecord
  belongs_to :home_team, class_name: "Team", :foreign_key => :home_team_id
  belongs_to :away_team, class_name: "Team", :foreign_key => :away_team_id
  has_many :picks
  belongs_to :week


  def self.game_results
    puts 'Please select which week has just finished'
    week_number = gets.chomp
    week = Week.get_week_by_week_number(week_number.to_i)
    week.games.each do |game|
      home_team = Team.all.find_by(id: game.home_team_id)

      away_team = Team.all.find_by(id: game.away_team_id)

      puts "Who won 1.#{away_team.name} @ 2.#{home_team.name}"

      results = gets.chomp

      if results.to_i == 2
        game.winning_team_id = game.home_team_id
      elsif results.to_i == 1
        game.winning_team_id = game.away_team_id
      end

      game.picks.each do |pick|
        if pick.guess_id == game.winning_team_id
          pick.update(was_right: true)
        end
      end

    end
  end


  def self.reset_week
    puts 'Please select which week needs to be reset'
    week_number = gets.chomp
    week = Week.get_week_by_week_number(week_number.to_i)
    week.games.each do |game|
      game.winning_team_id = 0
      game.save
      game.picks.each do |pick|
        pick.update(was_right: false)
      end
    end
  end


end
