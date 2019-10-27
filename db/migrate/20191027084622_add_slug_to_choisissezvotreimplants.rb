class AddSlugToChoisissezvotreimplants < ActiveRecord::Migration[5.2]
  def change
    add_column :choisissezvotreimplants, :slug, :string
    add_index :choisissezvotreimplants, :slug, unique: true
  end
end
