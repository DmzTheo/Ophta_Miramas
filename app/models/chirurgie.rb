class Chirurgie < ApplicationRecord
  extend FriendlyId
  friendly_id :nom, use: :slugged
end
