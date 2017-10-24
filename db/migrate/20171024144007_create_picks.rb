class CreatePicks < ActiveRecord::Migration[5.1]
  def change
    create_table :picks do |t|
      t.integer :game_id
      t.integer :user_id
      t.integer :guess_id
      t.boolean :was_right, default: false
      t.timestamps
    end
  end
end
