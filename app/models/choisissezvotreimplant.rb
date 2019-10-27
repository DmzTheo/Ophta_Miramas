class Choisissezvotreimplant < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
end
