class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :wins, :losses
  has_many :picks
end
