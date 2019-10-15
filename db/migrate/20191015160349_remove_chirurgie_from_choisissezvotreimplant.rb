class RemoveChirurgieFromChoisissezvotreimplant < ActiveRecord::Migration[5.2]
  def change
    remove_reference :choisissezvotreimplants, :chirurgie, foreign_key: true
  end
end
