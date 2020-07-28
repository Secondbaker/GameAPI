class AddRegionAndLocalizedNameToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :region, :string
    add_column :games, :localized_name, :string
  end
end
