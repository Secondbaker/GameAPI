class CreateJoinTableGameSystemsGames < ActiveRecord::Migration[6.0]
  def change
    create_table :game_systems_games, :id => false do |t|
      t.integer :game_system_id
      t.integer :game_id
    end
  end
end
