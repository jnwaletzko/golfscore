# typed: true
class AddTeeForeignKeyToHoles < ActiveRecord::Migration[6.0]
  def change
    add_column :holes, :tee_id, :integer
  end
end
