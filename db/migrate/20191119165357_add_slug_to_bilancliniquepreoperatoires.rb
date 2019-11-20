class AddSlugToBilancliniquepreoperatoires < ActiveRecord::Migration[6.0]
  def change
    add_column :bilancliniquepreoperatoires, :slug, :string
    add_index :bilancliniquepreoperatoires, :slug, unique: true
  end
end
