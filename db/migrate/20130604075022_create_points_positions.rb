class CreatePointsPositions < ActiveRecord::Migration
  def change
    create_table :points_positions, :id => false do |t|
      t.references :point
      t.references :position
    end

    add_index :points_positions, [:point_id, :position_id]
    add_index :points_positions, [:position_id, :point_id]
  end
end
