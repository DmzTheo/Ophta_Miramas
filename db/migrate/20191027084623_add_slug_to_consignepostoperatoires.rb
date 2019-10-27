class AddSlugToConsignepostoperatoires < ActiveRecord::Migration[5.2]
  def change
    add_column :consignepostoperatoires, :slug, :string
    add_index :consignepostoperatoires, :slug, unique: true
  end
end
