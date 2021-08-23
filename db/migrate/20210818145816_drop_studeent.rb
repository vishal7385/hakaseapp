class DropStudeent < ActiveRecord::Migration[6.1]
  def change
    drop_table :studeents
  end
end
