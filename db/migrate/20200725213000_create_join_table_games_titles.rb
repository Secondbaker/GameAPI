class CreateJoinTableGamesTitles < ActiveRecord::Migration[6.0]
  def change
    create_join_table :games, :titles do |t|
      # t.index [:game_id, :title_id]
      # t.index [:title_id, :game_id]
    end
  end
end
