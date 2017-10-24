class WeekSerializer < ActiveModel::Serializer
  def games
    object.games.map do |game|
      json = {}
      json['id'] = game.id
      json['home_team'] = {id: game.home_team.id, name: game.home_team.name}
      json["away_team"] = {id: game.away_team.id, name: game.away_team.name}
      json
    end
  end

  attributes :id, :week_number, :games
end
