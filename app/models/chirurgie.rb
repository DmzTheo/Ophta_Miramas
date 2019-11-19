class Chirurgie < ApplicationRecord
  has_many :bilancliniquepreoperatoires
  has_many :consignepostoperatoires
  has_many :preparerlinterventions
  has_one :choisissezvotreimplants

  extend FriendlyId
  friendly_id :nom, use: :slugged
end
