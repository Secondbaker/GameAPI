class AddRegionToConsole < ActiveRecord::Migration[6.0]
  def change
    add_column :consoles, :region, :string
  end
end
