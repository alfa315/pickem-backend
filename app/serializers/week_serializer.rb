class WeekSerializer < ActiveModel::Serializer
  def games
    object.games.map do |game|
      json = {}
      json['id'] = game.id
      json['home_team'] = {id: game.home_team.id, name: game.home_team.name, team_color: game.home_team.team_color}
      json["away_team"] = {id: game.away_team.id, name: game.away_team.name, team_color: game.away_team.team_color}

      json['winning_team'] = game.winning_team.try(:id)
      json
    end
  end

  attributes :id, :week_number, :games, :picks
end
