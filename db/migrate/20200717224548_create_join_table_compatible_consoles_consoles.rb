class CreateJoinTableCompatibleConsolesConsoles < ActiveRecord::Migration[6.0]
  def change
    create_table :compatible_consoles_consoles, :id => false do |t|
      t.integer :compatible_console_id
      t.integer :console_id
    end
  end
end
