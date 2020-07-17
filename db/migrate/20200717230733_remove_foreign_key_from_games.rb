class RemoveForeignKeyFromGames < ActiveRecord::Migration[6.0]
  def change
    remove_index :games, name: "index_games_on_console_id"
    remove_column :games, :console_id
  end
end
