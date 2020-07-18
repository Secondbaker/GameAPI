class CreateGameSystems < ActiveRecord::Migration[6.0]
  def change
    create_table :game_systems do |t|
      t.string :name

      t.timestamps
    end
  end
end
