class AddNameToChoisissezvotreimplant < ActiveRecord::Migration[5.2]
  def change
    add_column :choisissezvotreimplants, :name, :string
  end
end
