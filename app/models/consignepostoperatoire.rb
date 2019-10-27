class Consignepostoperatoire < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
end
