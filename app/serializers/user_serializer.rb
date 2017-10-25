class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :wins, :total_picks
  has_many :picks
end
