class CreateStatsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :might
      t.integer :agility
      t.integer :endurance
      t.integer :guile
      t.integer :wit
    end
  end
end
