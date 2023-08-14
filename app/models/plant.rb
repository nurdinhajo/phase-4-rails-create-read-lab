class Plant < ApplicationRecord
   attr_accessor :name, :image, :price

   validates :name, presence: true
   validates :image, presence: true
   validates :price, presence: true, numericality: { greater_than: 0 }
end
