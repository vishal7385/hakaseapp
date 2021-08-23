class CreateFeedback < ActiveRecord::Migration[6.1]
  def change
    create_table :feedbacks do |t|
      t.string :name
      t.string :rating
      t.string :Message
      t.timestamps
    end
  end
end
