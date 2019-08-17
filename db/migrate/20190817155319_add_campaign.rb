class AddCampaign < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :campaign, :string
  end
end
