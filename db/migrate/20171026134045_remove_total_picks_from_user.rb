class RemoveTotalPicksFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :total_picks, :integer
  end
end
