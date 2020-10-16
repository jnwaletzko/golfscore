# typed: true
class CreateHoles < ActiveRecord::Migration[6.0]
  def change
    create_table :holes do |t|
      t.integer :number, null: false
      t.integer :par, null: false
      t.integer :yardage
      t.integer :handicap
      t.timestamps
    end
  end
end
