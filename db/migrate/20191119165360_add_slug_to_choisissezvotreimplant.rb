class AddSlugToChoisissezvotreimplant < ActiveRecord::Migration[6.0]
  def change
    add_column :choisissezvotreimplants, :slug, :string
    add_index :choisissezvotreimplants, :slug, unique: true
  end
end
