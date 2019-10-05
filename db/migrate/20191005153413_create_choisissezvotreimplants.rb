class CreateChoisissezvotreimplants < ActiveRecord::Migration[5.2]
  def change
    create_table :choisissezvotreimplants do |t|
      t.references :chirurgie, foreign_key: true

      t.timestamps
    end
  end
end
