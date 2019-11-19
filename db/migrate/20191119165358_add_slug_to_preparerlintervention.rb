class AddSlugToPreparerlintervention < ActiveRecord::Migration[6.0]
  def change
    add_column :preparerlinterventions, :slug, :string
    add_index :preparerlinterventions, :slug, unique: true
  end
end
