class RemoveChirurgieFromPreparerlintervention < ActiveRecord::Migration[5.2]
  def change
    remove_reference :preparerlinterventions, :chirurgie, foreign_key: true
  end
end
