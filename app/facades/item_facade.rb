class ItemFacade
  def self.all_merchant_items(merchant_id)
    json = ItemService.merchant_items(merchant_id)

    @items = json[:data].map do |item_data|
      ItemPoro.new(item_data)
    end
  end

  def self.one_item(item_id)
    json = ItemService.specific_item(item_id)

    @item = ItemPoro.new(json[:data])
  end
end