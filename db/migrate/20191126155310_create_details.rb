class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.references :chirurgie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
