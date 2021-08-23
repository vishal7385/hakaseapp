class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :category
      t.string :title

      t.timestamps
    end
  end
end
