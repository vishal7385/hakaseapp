class DeleteColumnFeedbackIdFromPost < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :feedback_id, :integer
  end
end
