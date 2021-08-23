class AddFeedbackIdToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :feedback_id, :integer
    add_index :posts, :feedback_id
  end
end
