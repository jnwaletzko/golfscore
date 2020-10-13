class CreateTees < ActiveRecord::Migration[6.0]
  def change
    create_table :tees do |t|
      t.string :color, null: false
      t.integer :total_yardage, null: false
      t.references :course, foreign_key: true
      t.timestamps
    end
  end
end
