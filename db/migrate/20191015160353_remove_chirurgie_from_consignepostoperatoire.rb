class RemoveChirurgieFromConsignepostoperatoire < ActiveRecord::Migration[5.2]
  def change
    remove_reference :consignepostoperatoires, :chirurgie, foreign_key: true
  end
end
