class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :unit, presence: true

  extend Enumerize
  enumerize :unit, in: [:yen, :usd]

  mount_uploader :image, ImageUploader
end
