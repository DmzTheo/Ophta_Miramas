class AddColumnName < ActiveRecord::Migration[6.0]
  def change
    add_column :bilancliniquepreoperatoires, :name, :string
    add_column :choisissezvotreimplants, :name, :string
    add_column :consignepostoperatoires, :name, :string
    add_column :preparerlinterventions, :name, :string
  end
end
