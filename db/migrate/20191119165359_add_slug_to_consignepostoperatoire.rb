class AddSlugToConsignepostoperatoire < ActiveRecord::Migration[6.0]
  def change
    add_column :consignepostoperatoires, :slug, :string
    add_index :consignepostoperatoires, :slug, unique: true
  end
end
