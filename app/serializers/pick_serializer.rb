class PickSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :user_id, :guess_id
  belongs_to :game
  belongs_to :user
end
