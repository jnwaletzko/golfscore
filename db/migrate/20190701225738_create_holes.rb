# typed: true
class CreateHoles < ActiveRecord::Migration[6.0]
  def change
    create_table :holes do |t|
      t.integer :number, null: false
      t.integer :par, null: false
      t.integer :yardage
      t.integer :handicap
      t.integer :strokes, null: false
      t.integer :number_of_putts, null: false
      t.boolean :green_in_regulation, null: false
      t.boolean :fairway_hit, null: true
      t.timestamps
    end
  end
end
