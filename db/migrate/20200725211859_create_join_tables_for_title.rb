class CreateJoinTablesForTitle < ActiveRecord::Migration[6.0]
  def change
    create_table :game_systems_titles, :id => false do |t|
      t.integer :game_system_id
      t.integer :title_id
    end
    drop_table :game_systems_games
  end
end
