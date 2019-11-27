class Chirurgie < ApplicationRecord
  has_one :detail

  extend FriendlyId
  friendly_id :nom, use: :slugged
end
