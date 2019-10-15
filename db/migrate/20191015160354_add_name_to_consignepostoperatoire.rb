class AddNameToConsignepostoperatoire < ActiveRecord::Migration[5.2]
  def change
    add_column :consignepostoperatoires, :name, :string
  end
end
