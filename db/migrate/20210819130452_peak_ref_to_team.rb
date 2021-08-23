class PeakRefToTeam < ActiveRecord::Migration[6.1]
  def change
    add_reference :teams, :peak, foreign_key: true
  end
end
