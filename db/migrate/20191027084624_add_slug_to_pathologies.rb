class AddSlugToPathologies < ActiveRecord::Migration[5.2]
  def change
    add_column :pathologies, :slug, :string
    add_index :pathologies, :slug, unique: true
  end
end
