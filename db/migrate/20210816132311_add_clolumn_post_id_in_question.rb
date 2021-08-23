class AddClolumnPostIdInQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :post_id, :integer

  end
end
