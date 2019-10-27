class AddSlugToBilancliniquepreoperatoires < ActiveRecord::Migration[5.2]
  def change
    add_column :bilancliniquepreoperatoires, :slug, :string
    add_index :bilancliniquepreoperatoires, :slug, unique: true
  end
end
