class CreateHoleScores < ActiveRecord::Migration[6.0]
  def change
    create_table :hole_scores do |t|
      t.integer :strokes, null: false
      t.integer :number_of_putts, null: false
      t.boolean :green_in_regulation, null: false
      t.boolean :fairway_hit, null: true
      t.text :notes, null: true
      t.references :hole, foreign_key: true
      t.timestamps
    end
  end
end
