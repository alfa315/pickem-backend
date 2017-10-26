class Game < ApplicationRecord
  belongs_to :home_team, class_name: "Team", :foreign_key => :home_team_id
  belongs_to :away_team, class_name: "Team", :foreign_key => :away_team_id
  belongs_to :winning_team, class_name: "Team", :foreign_key => :winning_team_id
  has_many :picks
  belongs_to :week
  validates :winning_team, inclusion: {in: [0, :home_team, :away_team]}

  def set_winner(str = 'home')
    if str.downcase == 'home'
      self.update(winning_team: self.home_team)
    elsif str.downcase == 'away'
      self.update(winning_team: self.away_team)
    end
  end


  def self.game_results
    puts 'Please select which week has just finished'
    week_number = gets.chomp
    week = Week.get_week_by_week_number(week_number.to_i)
    week.games.each do |game|
      home_team = Team.all.find_by(id: game.home_team_id)

      away_team = Team.all.find_by(id: game.away_team_id)

      puts "Who won 1.#{away_team.name} @ 2.#{home_team.name}"

      results = gets.chomp
      while results != "1" && results != "2" && results != "3"
        puts "Pleas enter 1 or 2"
        results = gets.chomp
      end

      if results.to_i == 2

        game.update(winning_team_id: game.home_team_id)
      elsif results.to_i == 1
        game.update(winning_team_id: game.away_team_id)
      elsif results == "3"
        next
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
