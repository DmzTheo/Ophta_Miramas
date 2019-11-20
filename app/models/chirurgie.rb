class Chirurgie < ApplicationRecord
  has_one :bilancliniquepreoperatoire
  has_one :consignepostoperatoire
  has_one :preparerlintervention
  has_one :choisissezvotreimplant

  extend FriendlyId
  friendly_id :nom, use: :slugged
end
