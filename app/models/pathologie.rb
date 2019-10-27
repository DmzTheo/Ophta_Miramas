class Pathologie < ApplicationRecord
  extend FriendlyId
  friendly_id :nom, use: :slugged
end
