class AddNameToBilancliniquepreoperatoire < ActiveRecord::Migration[5.2]
  def change
    add_column :bilancliniquepreoperatoires, :name, :string
  end
end
