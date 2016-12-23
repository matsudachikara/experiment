class ItemGroupsController < ApplicationController
  def index
    item_ids = [2, 5, 10, 1, 6]
    @item_groups = item_groups_has_item_ids(item_ids)

    products ||= []
    Item.where(id: item_ids).each do |item|
      products << item.products
    end
    @latest_product = products.first[0]
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

    private
    def item_groups_has_item_ids(item_ids)
      item_groups = []
      Item.where(id: item_ids).each do |item|
        item_groups << item.item_group
      end
      item_groups.uniq!
    end
end
