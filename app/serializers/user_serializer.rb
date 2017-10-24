class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :wins, :losses
end
