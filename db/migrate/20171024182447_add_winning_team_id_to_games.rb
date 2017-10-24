class AddWinningTeamIdToGames < ActiveRecord::Migration[5.1]
  def change
    add_column :games, :winning_team_id, :integer, default: false
  end
end
