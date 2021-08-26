class CreateAssembliesParts < ActiveRecord::Migration[6.1]
  def change
    create_table :assemblies_parts do |t|
      t.references :assembly, null: false, foreign_key: true
      t.references :part, null: false, foreign_key: true

      t.timestamps
    end
  end
end
