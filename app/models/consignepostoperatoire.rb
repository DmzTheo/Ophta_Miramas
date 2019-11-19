class Consignepostoperatoire < ApplicationRecord
  belongs_to :chirurgie

  # extend FriendlyId
  # friendly_id :name, use: :slugged
end
