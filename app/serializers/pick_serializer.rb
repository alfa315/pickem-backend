class PickSerializer < ActiveModel::Serializer
  attributes :id, :game_id, :user_id, :guess_id, :week_number

  def week_number
    object.week.week_number
  end
end
