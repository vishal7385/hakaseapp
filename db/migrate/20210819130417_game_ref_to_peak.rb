class GameRefToPeak < ActiveRecord::Migration[6.1]
  def change
    add_reference :peaks, :game, foreign_key: true
  end
end
