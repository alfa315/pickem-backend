class GameSerializer < ActiveModel::Serializer
  attributes :id, :away_team, :home_team

  def away_team
    {name: object.away_team.name, id: object.away_team.id, record: object.away_team.record}
  end

  def home_team
    {name: object.home_team.name, id: object.home_team.id, record: object.home_team.record}
  end

end
