class ItemPoro
  attr_reader :id, :name, :description, :unit_price, :merch_id

  def initialize(item_data)
    @id = item_data[:id]
    @name = item_data[:attributes][:name]
    @description = item_data[:attributes][:description]
    @unit_price = item_data[:attributes][:unit_price]
    @merch_id = item_data[:attributes][:merchant_id]
  end
end