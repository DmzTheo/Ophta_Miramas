class CreatePreparerlinterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :preparerlinterventions do |t|
      t.references :chirurgie, foreign_key: true

      t.timestamps
    end
  end
end
