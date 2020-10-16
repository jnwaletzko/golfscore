class RemoveScoresFromHoles < ActiveRecord::Migration[6.0]
  def change
    remove_column :holes, :strokes, :integer, null: false
    remove_column :holes, :number_of_putts, :integer, null: false
    remove_column :holes, :green_in_regulation, :boolean, null: false
    remove_column :holes, :fairway_hit, :boolean, null: true
  end
end
