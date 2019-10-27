class AddSlugToPreparerlinterventions < ActiveRecord::Migration[5.2]
  def change
    add_column :preparerlinterventions, :slug, :string
    add_index :preparerlinterventions, :slug, unique: true
  end
end
