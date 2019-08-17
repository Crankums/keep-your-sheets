class AddStatsToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :stats, :integer
  end
end
