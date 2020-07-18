class CreateJoinTableConsolesGameSystems < ActiveRecord::Migration[6.0]
  def change
    create_table :consoles_game_systems, :id => false do |t|
      t.integer :game_system_id
      t.integer :console_id
    end
  end
end
