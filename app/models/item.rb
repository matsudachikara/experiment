class Item < ApplicationRecord
  belongs_to :item_group
  has_many :products
end
