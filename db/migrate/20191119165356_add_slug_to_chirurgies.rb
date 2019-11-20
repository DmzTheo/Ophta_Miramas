class AddSlugToChirurgies < ActiveRecord::Migration[6.0]
  def change
    add_column :chirurgies, :slug, :string
    add_index :chirurgies, :slug, unique: true
  end
end
