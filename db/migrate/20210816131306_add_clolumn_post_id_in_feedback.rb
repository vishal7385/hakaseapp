class AddClolumnPostIdInFeedback < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :post_id, :integer

  end
end
