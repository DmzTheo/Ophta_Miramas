class Consignepostoperatoire < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :chirurgie
end
