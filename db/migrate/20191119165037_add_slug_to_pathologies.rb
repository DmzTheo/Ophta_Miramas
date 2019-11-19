class AddSlugToPathologies < ActiveRecord::Migration[6.0]
  def change
    add_column :pathologies, :slug, :string
    add_index :pathologies, :slug, unique: true
  end
end
