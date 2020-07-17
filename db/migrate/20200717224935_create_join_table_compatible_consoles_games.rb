class CreateJoinTableCompatibleConsolesGames < ActiveRecord::Migration[6.0]
  def change
    create_table :compatible_consoles_games, :id => false do |t|
      t.integer :compatible_console_id
      t.integer :game_id
    end
  end
end
