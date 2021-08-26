class CreatePolyComments < ActiveRecord::Migration[6.1]
  def change
    create_table :poly_comments do |t|
      t.text :content
      t.references :commentable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
