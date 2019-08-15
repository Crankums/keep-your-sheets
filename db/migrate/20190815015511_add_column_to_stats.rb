class AddColumnToStats < ActiveRecord::Migration[5.2]
  def change
    add_column :stats, :character_id, :integer
  end
end
