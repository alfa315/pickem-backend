class AddWeekIdToPicks < ActiveRecord::Migration[5.1]
  def change
    add_column :picks, :week_id, :integer
  end
end
