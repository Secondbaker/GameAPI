class AddRegionLockedToGameSystems < ActiveRecord::Migration[6.0]
  def change
    add_column :game_systems, :region_locked, :boolean
  end
end
