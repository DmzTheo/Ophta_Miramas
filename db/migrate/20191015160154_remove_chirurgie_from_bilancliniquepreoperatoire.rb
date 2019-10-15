class RemoveChirurgieFromBilancliniquepreoperatoire < ActiveRecord::Migration[5.2]
  def change
    remove_reference :bilancliniquepreoperatoires, :chirurgie, foreign_key: true
  end
end
