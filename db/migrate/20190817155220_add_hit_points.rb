class AddHitPoints < ActiveRecord::Migration[5.2]
  def change
    add_column :stats, :hit_points, :integer
    add_column :stats, :per_day, :integer
  end
end
