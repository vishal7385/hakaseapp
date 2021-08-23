class CreateAnswer < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.string :title
      t.string :answer
      t.timestamps
    end
  end
end
