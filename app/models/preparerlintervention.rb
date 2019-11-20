class Preparerlintervention < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :chirurgie
end
