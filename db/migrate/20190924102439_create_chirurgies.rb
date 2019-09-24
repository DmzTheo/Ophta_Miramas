class CreateChirurgies < ActiveRecord::Migration[5.2]
  def change
    create_table :chirurgies do |t|
      t.string :nom

      t.timestamps
    end
  end
end
