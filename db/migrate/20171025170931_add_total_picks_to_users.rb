class AddTotalPicksToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :total_picks, :integer
  end
end
