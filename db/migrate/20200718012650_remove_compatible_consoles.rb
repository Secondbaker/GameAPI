class RemoveCompatibleConsoles < ActiveRecord::Migration[6.0]
  def up
    drop_table :compatible_consoles_consoles
    drop_table :compatible_consoles_games
    drop_table :compatible_consoles
  end
  def down
    create_table "compatible_consoles", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  
    create_table "compatible_consoles_consoles", id: false, force: :cascade do |t|
      t.integer "compatible_console_id"
      t.integer "console_id"
    end
  
    create_table "compatible_consoles_games", id: false, force: :cascade do |t|
      t.integer "compatible_console_id"
      t.integer "game_id"
    end
  end
end
