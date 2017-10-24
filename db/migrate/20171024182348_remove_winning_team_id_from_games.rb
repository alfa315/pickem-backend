class RemoveWinningTeamIdFromGames < ActiveRecord::Migration[5.1]
  def change
    remove_column :games, :winning_team_id, :integer
  end
end
