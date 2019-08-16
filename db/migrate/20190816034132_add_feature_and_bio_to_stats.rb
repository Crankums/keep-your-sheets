class AddFeatureAndBioToStats < ActiveRecord::Migration[5.2]
  def change
    add_column :stats, :features, :text
    add_column :stats, :bio, :text
  end
end
