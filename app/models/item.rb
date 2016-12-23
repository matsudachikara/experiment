class Item < ApplicationRecord
  belongs_to :item_group
  has_many :products, ->{order("estimate_sale_start DESC") }
end
