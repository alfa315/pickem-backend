class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :team_color
  attribute :record

  end
