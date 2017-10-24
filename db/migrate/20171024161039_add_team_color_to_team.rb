class AddTeamColorToTeam < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :team_color, :string
  end
end
