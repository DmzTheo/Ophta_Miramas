class AddNameToPreparerlintervention < ActiveRecord::Migration[5.2]
  def change
    add_column :preparerlinterventions, :name, :string
  end
end
