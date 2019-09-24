class CreatePathologies < ActiveRecord::Migration[5.2]
  def change
    create_table :pathologies do |t|
      t.string :nom

      t.timestamps
    end
  end
end
